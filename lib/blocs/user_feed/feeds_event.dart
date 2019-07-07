import 'package:equatable/equatable.dart';
import 'package:cfnews/data/model/user_feed/user_feed.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FeedsEvent extends Equatable {
  FeedsEvent([List props = const []]) : super(props);
}

class LoadUserFeedsEvent extends FeedsEvent {}

class FeedsUnsubscribeEvent extends FeedsEvent {
  final UserFeed userFeed;

  FeedsUnsubscribeEvent(this.userFeed);
}

class FeedsSubscribeEvent extends FeedsEvent {
  final UserFeed userFeed;

  FeedsSubscribeEvent(this.userFeed);
}
