import 'dart:async';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:cfnews/data/model/article/article.dart';
import 'package:cfnews/network/local_datasource.dart';
import 'package:sembast/sembast.dart';

class ArticleDao {
  static const String SAVED_ARTICLES_STORE_NAME = 'saved_articles';
  final _savedArticles = intMapStoreFactory.store(SAVED_ARTICLES_STORE_NAME);

  Future<Database> get _dbConnection async =>
      await LocalDataSource.instance.connection;

  Future insert(Article article) async {
    return await _savedArticles.add(await _dbConnection, article.toMap());
  }

  Future update(Article article) async {
    final finder = Finder(filter: Filter.byKey(article.id));
    return await _savedArticles.update(await _dbConnection, article.toMap(),
        finder: finder);
  }

  Future delete(int id) async {
    final finder = Finder(filter: Filter.byKey(id));
    await _savedArticles.delete(await _dbConnection, finder: finder);
  }

  Future<BuiltList<Article>> retrieveAllSorted(
      List<SortOrder> sortOrders) async {
    final finder = Finder(sortOrders: sortOrders);
    final articleRows =
        await _savedArticles.find(await _dbConnection, finder: finder);
    var myList = BuiltList<Article>.from(articleRows.map((row) {
      final article = Article.fromMap(row.value);
      return article.rebuild(((b) => b..id = row.key));
    }).toList());
    return myList;
//    var myCustomList = List<Article>();
//    myCustomList.add(RandomArticleGenerator.getRandomArticle());
//    myCustomList.add(RandomArticleGenerator.getRandomArticle());
//    myCustomList.add(RandomArticleGenerator.getRandomArticle());
//    myCustomList.add(RandomArticleGenerator.getRandomArticle());
//    myCustomList.add(RandomArticleGenerator.getRandomArticle());

//    return BuiltList.from(myCustomList);
  }

  Future getById(int id) async {
    final finder = Finder(filter: Filter.byKey(id));
    final articleRows =
        await _savedArticles.find(await _dbConnection, finder: finder);
    final row = articleRows.first;
    final article = Article.fromMap(row.value);
    return article.rebuild(((b) => b..id = row.key));
  }
}

class RandomArticleGenerator {
  static final _articles = <Article>[
    Article((b) => b
      ..id = 1
      ..title = "Title1"
      ..url = 'http'
      ..dateSaved = '20190101'),
    Article((b) => b
      ..id = 2
      ..title = "Title2"
      ..url = 'http'
      ..dateSaved = '20190102'),
    Article((b) => b
      ..id = 3
      ..title = "Title3"
      ..url = 'http'
      ..dateSaved = '20190103'),
    Article((b) => b
      ..id = 4
      ..title = "Title4"
      ..url = 'http'
      ..dateSaved = '20190104'),
    Article((b) => b
      ..id = 5
      ..title = "Title5"
      ..url = 'http'
      ..dateSaved = '20190105'),
    Article((b) => b
      ..id = 6
      ..title = "Title6"
      ..url = 'http'
      ..dateSaved = '20190106'),
  ];

  static Article getRandomArticle() {
    return _articles[Random().nextInt(_articles.length)];
  }
}

class NoResultsException implements Exception {
  final message = 'No results';
}
