import 'package:equatable/equatable.dart';
import 'package:cfnews/data/model/user_feed/user_feed.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FeedsState extends Equatable {
  FeedsState([List props = const []]) : super(props);
}

class FeedsLoadingState extends FeedsState {}
class FeedsStopState extends FeedsState {}

class FeedsLoadedState extends FeedsState {
  final List<UserFeed> userFeeds;

  FeedsLoadedState(this.userFeeds) : super([userFeeds]);
}

class FeedsSubscribeState extends FeedsState {
  final UserFeed userFeed;

  FeedsSubscribeState(this.userFeed);
}

class FeedsUnsubscribeState extends FeedsState {
  final UserFeed userFeed;

  FeedsUnsubscribeState(this.userFeed);
}
