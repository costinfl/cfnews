import 'package:equatable/equatable.dart';
import 'package:cfnews/data/model/article/article.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ArticleEvent extends Equatable {
  ArticleEvent([List props = const []]) : super(props);
}

class LoadArticlesEvent extends ArticleEvent {}

class AddArticleEvent extends ArticleEvent {
  final Article article;

  AddArticleEvent(this.article) : super([article]);
}

class DeleteArticleEvent extends ArticleEvent {
  final Article article;

  DeleteArticleEvent(this.article) : super([article]);
}
