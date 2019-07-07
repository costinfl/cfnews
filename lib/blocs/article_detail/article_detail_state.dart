import 'package:equatable/equatable.dart';
import 'package:cfnews/data/model/article/article.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ArticleDetailState extends Equatable {
  ArticleDetailState([List props = const []]) : super(props);
}

class InitialArticleDetailState extends ArticleDetailState {
}

class LoadingArticleDetailState extends ArticleDetailState {}

class LoadedArticleDetailState extends ArticleDetailState {
  final Article article;

  LoadedArticleDetailState(this.article);
}
