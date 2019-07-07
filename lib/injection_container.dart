import 'package:cfnews/blocs/article/article_bloc.dart';
import 'package:cfnews/blocs/article_detail/article_detail_bloc.dart';
import 'package:cfnews/blocs/home_list/home_list_bloc.dart';
import 'package:cfnews/blocs/user_feed/feeds_bloc.dart';
import 'package:cfnews/network/feedly_api_client.dart';
import 'package:cfnews/network/feedly_api_client_mock.dart';
import 'package:cfnews/repository/article_dao.dart';
import 'package:cfnews/repository/user_feed_dao.dart';
import 'package:cfnews/services/article_service.dart';
import 'package:cfnews/services/feedly_service.dart';
import 'package:cfnews/services/feeds_service.dart';
import 'package:cfnews/services/home_list_service.dart';
import 'package:http/http.dart' as http;
import 'package:kiwi/kiwi.dart' as kiwi;

void initKiwi() {
  kiwi.Container()
    ..registerInstance(http.Client())
    ..registerFactory((c) => FeedlyApiClient(c.resolve()))
    ..registerFactory((c) => FeedlyApiClientMock(c.resolve()))
    ..registerFactory((c) => FeedlyService(c.resolve()))
    ..registerFactory((c) => ArticleDao())
    ..registerFactory((c) => ArticleService(c.resolve()))
    ..registerFactory((c) => ArticleBloc(c.resolve()))
    ..registerFactory((c) => UserFeedsDao())
    ..registerFactory((c) =>
        FeedsService(feedlyService: c.resolve(), userFeedsDao: c.resolve()))
    ..registerFactory((c) => FeedsBloc(c.resolve()))
    ..registerFactory((c) => HomeListService(
        feedlyService: c.resolve(), userFeedDao: c.resolve()))
    ..registerFactory((c) => HomeListBloc(c.resolve()))
    ..registerFactory((c) => ArticleDetailBloc(c.resolve()));
}
