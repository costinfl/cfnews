import 'package:equatable/equatable.dart';
import 'package:cfnews/data/model/home_list/home_list_item.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeListEvent extends Equatable {
  HomeListEvent([List props = const []]) : super(props);
}

class LoadHomeListEvent extends HomeListEvent {}

class HomeListSaveArticleEvent extends HomeListEvent {
  final HomeListItem item;

  HomeListSaveArticleEvent(this.item);
}
