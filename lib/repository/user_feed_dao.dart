import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:cfnews/data/model/user_feed/model_user_feed.dart';
import 'package:cfnews/network/local_datasource.dart';
import 'package:sembast/sembast.dart';

class UserFeedsDao {
  static const String USER_FEEDS_STORE_NAME = 'user_feeds';
  final _userFeeds = stringMapStoreFactory.store(USER_FEEDS_STORE_NAME);

  Future<Database> get _dbConnection async =>
      await LocalDataSource.instance.connection;

  Future insert(UserFeed userFeed) async {
    return await _userFeeds.add(await _dbConnection, userFeed.toMap());
  }

  Future getUserFeedById(String feedlyId) async {
    final finder = Finder(filter: Filter.equals('feedlyId', feedlyId));
    return await _userFeeds.findFirst(await _dbConnection, finder: finder);
  }

  Future update(UserFeed userFeed) async {
    final finder = Finder(filter: Filter.byKey(userFeed.id));
    return await _userFeeds.update(await _dbConnection, userFeed.toMap(),
        finder: finder);
  }

  Future delete(String id) async {
    final finder = Finder(filter: Filter.byKey(id));
    await _userFeeds.delete(await _dbConnection, finder: finder);
  }

  Future<BuiltList<UserFeed>> retrieveAllSorted(
      List<SortOrder> sortOrders) async {
    final finder = Finder(sortOrders: sortOrders);
    final userFeedRows =
        await _userFeeds.find(await _dbConnection, finder: finder);
    var myList = BuiltList<UserFeed>.from(userFeedRows.map((row) {
      final article = UserFeed.fromMap(row.value);
      return article.rebuild(((b) => b..id = row.key));
    }).toList());
    return myList;
  }
}
