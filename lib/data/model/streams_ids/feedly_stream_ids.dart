library feedly_stream_ids;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_stream_ids.g.dart';

abstract class FeedlyStreamIds
    implements Built<FeedlyStreamIds, FeedlyStreamIdsBuilder> {
  @BuiltValueField(wireName: 'ids')
  BuiltList<String> get streamIds;

  @BuiltValueField(wireName: 'continuation')
  @nullable
  String get continuationToken;

  FeedlyStreamIds._();

  factory FeedlyStreamIds([updates(FeedlyStreamIdsBuilder b)]) =
      _$FeedlyStreamIds;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FeedlyStreamIds.serializer, this));
  }

  static FeedlyStreamIds fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyStreamIds.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyStreamIds> get serializer =>
      _$feedlyStreamIdsSerializer;
}
