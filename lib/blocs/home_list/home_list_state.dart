import 'package:equatable/equatable.dart';
import 'package:cfnews/data/model/home_list/home_list.dart';
import 'package:cfnews/data/model/home_list/home_list_item.dart';
import 'package:meta/meta.dart';

@immutable
abstract class HomeListState extends Equatable {
  HomeListState([List props = const []]) : super(props);
}

class InitialHomeListState extends HomeListState {}

class HomeListLoadingState extends HomeListState {}

class HomeListSavedArticleState extends HomeListState {}
class HomeListStopState extends HomeListState {}

class HomeListSavingArticleState extends HomeListState {
  final HomeListItem homeListItem;

  HomeListSavingArticleState(this.homeListItem);
}

class HomeListLoadedState extends HomeListState {
  final HomeList homeList;

  HomeListLoadedState(this.homeList) : super([homeList]);
}
