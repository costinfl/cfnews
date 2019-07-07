import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cfnews/services/article_service.dart';
import 'package:meta/meta.dart';

import './package.dart';

class ArticleDetailBloc extends Bloc<ArticleDetailEvent, ArticleDetailState> {
  final ArticleService _articleService;

  ArticleDetailBloc(this._articleService);

  @override
  ArticleDetailState get initialState => InitialArticleDetailState();

  @override
  Stream<ArticleDetailState> mapEventToState(
    ArticleDetailEvent event,
  ) async* {
    if (event is LoadArticleDetailEvent) {
      yield LoadingArticleDetailState();
      final article = await _articleService.retrieveArticle(id: event.id);
      yield LoadedArticleDetailState(article);
    }
  }

  void onInit({@required int id}) {
    dispatch(LoadArticleDetailEvent(id));
  }
}
