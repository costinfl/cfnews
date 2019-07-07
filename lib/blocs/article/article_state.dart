import 'package:equatable/equatable.dart';
import 'package:cfnews/data/model/article/article.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ArticleState extends Equatable {
  ArticleState([List props = const []]) : super(props);
}

class ArticlesLoadingState extends ArticleState {}
class ArticlesStopState extends ArticleState {}

class ArticlesLoadedState extends ArticleState {
  final List<Article> articles;

  ArticlesLoadedState(this.articles) : super([articles]);
}
