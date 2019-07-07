import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cfnews/blocs/user_feed/package.dart';
import 'package:cfnews/data/model/collections/model_collections.dart';
import 'package:cfnews/data/model/user_feed/user_feed.dart';
import 'package:cfnews/services/feeds_service.dart';

class FeedsBloc extends Bloc<FeedsEvent, FeedsState> {
  final FeedsService _feedsService;
  bool islocalDataSourceLoaded = false;

  FeedsBloc(this._feedsService);

  @override
  FeedsState get initialState => FeedsLoadingState();

  @override
  Stream<FeedsState> mapEventToState(
    FeedsEvent event,
  ) async* {
    try {
      if (event is LoadUserFeedsEvent) {
        yield FeedsLoadingState();
        yield* _refreshFeeds();
      } else if (event is FeedsSubscribeEvent) {
        await _feedsService.subscribe(event.userFeed);
        yield* _refreshFeeds();
      } else if (event is FeedsUnsubscribeEvent) {
        await _feedsService.unsubscribe(event.userFeed);
        yield* _refreshFeeds();
      } else {
        yield FeedsStopState();
      }
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield currentState;
    }
  }

  Stream<FeedsState> _refreshFeeds() async* {
    final collections = await _feedsService.refreshFeedlyFeeds();
    BuiltList<UserFeed> userFeeds = await _feedsService.retrieveUserFeeds();
    BuiltList<UserFeed> combinedFeeds = BuiltList<UserFeed>();
    List<String> existingFeedlyIds = List();

    if (userFeeds.length > 0) {
      for (UserFeed u in userFeeds) {
        existingFeedlyIds.add(u.feedlyId);
      }
      combinedFeeds = (combinedFeeds.toBuilder()..addAll(userFeeds)).build();
    }
    for (FeedlyCollection collection in collections) {
      if (!existingFeedlyIds.contains(collection.id)) {
        var userFeed = UserFeed((b) => b
          ..id = collection.id
          ..feedlyId = collection.id
          ..feedUrl = collection.numFeeds > 0 ? collection.feeds[0].website : ""
          ..feedIconUrl =
              collection.numFeeds > 0 ? collection.feeds[0].iconUrl ?? "" : ""
          ..feedLabel = collection.label
          ..subscribed = false);

        combinedFeeds = (combinedFeeds.toBuilder()..add(userFeed)).build();
      }
    }
//    if (!islocalDataSourceLoaded) {
//      for (UserFeed userFeed in userFeeds) {
//        await _feedsService.insertIntoDatabase(userFeed);
//      }
//      islocalDataSourceLoaded = true;
//    }
    yield FeedsLoadedState(List<UserFeed>.from(combinedFeeds));
  }
}
