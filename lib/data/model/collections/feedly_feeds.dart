library feedly_feeds;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_feeds.g.dart';

abstract class FeedlyFeeds implements Built<FeedlyFeeds, FeedlyFeedsBuilder> {
  String get id;

  String get feedId;

  String get title;

  @nullable
  int get updated;

  double get velocity;

  BuiltList<String> get topics;

  int get subscribers;

  @nullable
  String get website;

  @nullable
  int get estimatedEngagement;

  @nullable
  bool get partial;

  @nullable
  String get coverUrl;

  @nullable
  String get iconUrl;

  @nullable
  String get visualUrl;

  @nullable
  String get language;

  @nullable
  String get contentType;

  @nullable
  String get description;

  @nullable
  String get coverColor;

  FeedlyFeeds._();

  factory FeedlyFeeds([updates(FeedlyFeedsBuilder b)]) = _$FeedlyFeeds;

  String toJson() {
    return json.encode(serializers.serializeWith(FeedlyFeeds.serializer, this));
  }

  static FeedlyFeeds fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyFeeds.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyFeeds> get serializer => _$feedlyFeedsSerializer;
}
