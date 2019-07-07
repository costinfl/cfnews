import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cfnews/data/model/article/article.dart';
import 'package:cfnews/services/article_service.dart';
import 'package:sembast/sembast.dart';

import './package.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleService _articleService;

  ArticleBloc(this._articleService);

  @override
  ArticleState get initialState => ArticlesLoadingState();

  @override
  Stream<ArticleState> mapEventToState(
    ArticleEvent event,
  ) async* {
    try {
      if (event is LoadArticlesEvent) {
        yield ArticlesLoadingState();
        yield* _refreshArticles();
      } else if (event is AddArticleEvent) {
        await _articleService.addArticle(article: event.article);
        yield* _refreshArticles();
      } else if (event is DeleteArticleEvent) {
        await _articleService.deleteArticle(id: event.article.id);
        yield* _refreshArticles();
      } else {
        yield ArticlesStopState();
      }
    } catch (_, stackTrace) {
      print('$_ $stackTrace');
      yield currentState;
    }
  }

  Stream<ArticleState> _refreshArticles() async* {
    final articles =
        await _articleService.retrieveAllSorted(sortOrders: <SortOrder>[
      SortOrder('dateAdded', false),
      SortOrder('published', false),
    ]);
    yield ArticlesLoadedState(List<Article>.from(articles));
  }
}
