library user_feed;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'user_feed.g.dart';

abstract class UserFeed implements Built<UserFeed, UserFeedBuilder> {
  @nullable
  String get id;

  @nullable
  String get feedlyId;

  @nullable
  String get feedUrl;

  @nullable
  String get feedIconUrl;

  @nullable
  String get feedLabel;

  @nullable
  bool get subscribed;

  UserFeed._();

  factory UserFeed([updates(UserFeedBuilder b)]) = _$UserFeed;

  String toJson() {
    return json.encode(serializers.serializeWith(UserFeed.serializer, this));
  }

  static UserFeed fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserFeed.serializer, json.decode(jsonString));
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'feedlyId': feedlyId,
      'feedUrl': feedUrl,
      'feedIconUrl': feedIconUrl,
      'feedLabel': feedLabel,
      'subscribed': subscribed,
    };
  }

  static UserFeed fromMap(Map<String, dynamic> value) {
    return UserFeed(
      (b) => b
        ..id = value['id']
        ..feedlyId = value['feedlyId']
        ..feedUrl = value['feedUrl']
        ..feedIconUrl = value['feedIconUrl']
        ..feedLabel = value['feedLabel']
        ..subscribed = value['subscribed'],
    );
  }

  static Serializer<UserFeed> get serializer => _$userFeedSerializer;
}
