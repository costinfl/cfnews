library feedly_collection;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/collections/feedly_feeds.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_collection.g.dart';

abstract class FeedlyCollection
    implements Built<FeedlyCollection, FeedlyCollectionBuilder> {
  @nullable
  bool get customizable;

  @nullable
  bool get enterprise;

  @nullable
  BuiltList<FeedlyFeeds> get feeds;

  @nullable
  String get label;

  @nullable
  int get numFeeds;

  String get id;

  FeedlyCollection._();

  factory FeedlyCollection([updates(FeedlyCollectionBuilder b)]) =
      _$FeedlyCollection;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FeedlyCollection.serializer, this));
  }

  static FeedlyCollection fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyCollection.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyCollection> get serializer =>
      _$feedlyCollectionSerializer;
}
