import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ArticleDetailEvent extends Equatable {
  ArticleDetailEvent([List props = const []]) : super(props);
}

class LoadArticleDetailEvent extends ArticleDetailEvent {
  final int id;

  LoadArticleDetailEvent(this.id);

}
