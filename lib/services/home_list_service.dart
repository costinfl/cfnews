import 'package:built_collection/built_collection.dart';
import 'package:cfnews/data/model/common/model_common.dart';
import 'package:cfnews/data/model/contents/model_feedly_contents.dart';
import 'package:cfnews/data/model/entries/model_entries.dart';
import 'package:cfnews/data/model/home_list/model_home_list.dart';
import 'package:cfnews/data/model/streams_ids/model_stream_ids.dart';
import 'package:cfnews/data/model/user_feed/model_user_feed.dart';
import 'package:cfnews/repository/user_feed_dao.dart';
import 'package:cfnews/services/feedly_service.dart';
import 'package:sembast/sembast.dart';

class HomeListService {
  final FeedlyService feedlyService;
  final UserFeedsDao userFeedDao;

  HomeListService({this.feedlyService, this.userFeedDao});

  Future loadHomeList() async {
    HomeList homeList = HomeList();
    List<SortOrder> sortOrders = <SortOrder>[];
    List<String> allStreamIds = List();
    List<FeedlyContentsItems> allContents = List();
    BuiltList<UserFeed> userFeeds =
    await userFeedDao.retrieveAllSorted(sortOrders);

    for (UserFeed u in userFeeds) {
      var categoryId = u.feedlyId;
      FeedlyStreamIds feedlyStreamIdsObject =
      await feedlyService.retrieveFeedlyStreamIds(categoryId);

      FeedlyContents feedlyContentsObject =
      await feedlyService.retrieveFeedlyContents(categoryId);

      allContents.addAll(feedlyContentsObject.items);
      allStreamIds.addAll(feedlyStreamIdsObject.streamIds);
    }

    FeedlyEntriesResult entriesList =
    await feedlyService.retrieveFeedlyEntries(allStreamIds);

    for (FeedlyEntry feedlyEntry in entriesList.entries) {
      var homeListItem = new HomeListItem();
      homeListItem = (homeListItem.toBuilder()
        ..title = feedlyEntry.title
        ..coverUrl =
        feedlyEntry.visual == null ? "" : feedlyEntry.visual.url ?? ""
        ..articleUrl = feedlyEntry.ampUrl ??
            feedlyEntry.canonicalUrl ??
            feedlyEntry.originId
        ..iconUrl = findFeedIconUrl(userFeeds, feedlyEntry)
        ..updated = feedlyEntry.crawled
        ..publishDate = feedlyEntry.published.toString()
        ..content = findContent(allContents, feedlyEntry))
          .build();
      homeList = (homeList.toBuilder()
        ..items.add(homeListItem)).build();
    }
//    homeList.items.asList().sort((a,b) => a.publishDate.compareTo(b.publishDate));
//    homeList = (homeList.toBuilder()..items = homeList.items.toBuilder()).build();
    var sortedList = List<HomeListItem>();
    sortedList.addAll(homeList.items.asList());
    sortedList
      ..sort((a, b) =>
          a.updated.compareTo(b.updated));
    var reversedList = sortedList.reversed;
    homeList = (homeList.toBuilder()
      ..items.clear()
      ..items.addAll(reversedList))
        .build();
    return homeList;
  }

  String findFeedIconUrl(BuiltList<UserFeed> userFeeds,
      FeedlyEntry feedlyEntry) {
    return userFeeds
        .firstWhere(
            (u) =>
        u.feedlyId ==
            (feedlyEntry.categories.firstWhere((c) => c.id == u.feedlyId,
                orElse: () => Categories()))
                .id,
        orElse: () => UserFeed())
        .feedIconUrl;
  }

  String findContent(List<FeedlyContentsItems> allContents,
      FeedlyEntry feedlyEntry) {
    FeedlyContentsItems foundFeedlyContentsItem =
    allContents.firstWhere((u) => u.id == feedlyEntry.id,
        orElse: () =>
            FeedlyContentsItems((b) =>
            b
              ..title = feedlyEntry.title
              ..id = "dummyId"
              ..content = Content((b) => b..content = "N/A").toBuilder()
              ..summary = Summary((b) => b..content = "N/A").toBuilder()));
    String content = foundFeedlyContentsItem.content?.content;
    if (content == null) {
      content = foundFeedlyContentsItem.summary?.content;
    }
    if (content == null) {
      content = foundFeedlyContentsItem.title ??
          "<<Cannot retrieve content. Go to website to read more!>>";
    }
    return content;
  }
}
