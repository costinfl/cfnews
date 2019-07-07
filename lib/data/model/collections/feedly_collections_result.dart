library feedly_collections_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/collections/model_collections.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_collections_result.g.dart';

abstract class FeedlyCollectionsResult
    implements Built<FeedlyCollectionsResult, FeedlyCollectionsResultBuilder> {

  BuiltList<FeedlyCollection> get collections;

  FeedlyCollectionsResult._();

  factory FeedlyCollectionsResult([updates(FeedlyCollectionsResultBuilder b)]) =
      _$FeedlyCollectionsResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(FeedlyCollectionsResult.serializer, this));
  }

  static FeedlyCollectionsResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyCollectionsResult.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyCollectionsResult> get serializer =>
      _$feedlyCollectionsResultSerializer;
}
