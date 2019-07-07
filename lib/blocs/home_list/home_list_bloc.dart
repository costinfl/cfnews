import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cfnews/services/home_list_service.dart';

import './package.dart';

class HomeListBloc extends Bloc<HomeListEvent, HomeListState> {
  final HomeListService _homeListService;

  HomeListBloc(this._homeListService);

  @override
  HomeListState get initialState => InitialHomeListState();

  @override
  Stream<HomeListState> mapEventToState(
    HomeListEvent event,
  ) async* {
    if (event is LoadHomeListEvent) {
      yield HomeListLoadingState();
      yield* _refreshHomeList();
    } else {
      yield HomeListStopState();
    }
  }

  Stream<HomeListState> _refreshHomeList() async* {
    final homeList = await _homeListService.loadHomeList();

    yield HomeListLoadedState(homeList);
  }
}
