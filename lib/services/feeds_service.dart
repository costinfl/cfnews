import 'package:cfnews/data/model/user_feed/user_feed.dart';
import 'package:cfnews/repository/user_feed_dao.dart';
import 'package:cfnews/services/feedly_service.dart';
import 'package:sembast/sembast.dart';

class FeedsService {
  final FeedlyService feedlyService;
  final UserFeedsDao userFeedsDao;

  FeedsService({this.feedlyService, this.userFeedsDao});

  Future refreshFeedlyFeeds() async {
    final resultColl = await feedlyService.retrieveFeedlyCollections();
    return resultColl.collections.asList();
  }

  Future retrieveUserFeeds() async {
    var sortOrders = <SortOrder>[
//      SortOrder('dateAdded', false),
//      SortOrder('published', false),
    ];
    return await userFeedsDao.retrieveAllSorted(sortOrders);
  }

  Future insertIntoDatabase(UserFeed userFeed) async {
    return await userFeedsDao.insert(userFeed);
  }

  Future subscribe(UserFeed userFeed) async {
    userFeed = userFeed.rebuild((b) => b..subscribed = true);
    var fromDB = await userFeedsDao.getUserFeedById(userFeed.feedlyId);
    if (fromDB == null) {
      return await userFeedsDao.insert(userFeed);
    }
    return await userFeedsDao.update(userFeed);
  }

  Future unsubscribe(UserFeed userFeed) async {
    return await userFeedsDao.delete(userFeed.id);
  }
}
