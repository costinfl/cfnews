library feedly_contents;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/common/alternate.dart';
import 'package:cfnews/data/model/contents/feedly_contents_items.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_contents.g.dart';

abstract class FeedlyContents
    implements Built<FeedlyContents, FeedlyContentsBuilder> {
  @nullable
  String get id;

  @nullable
  String get title;

  @nullable
  int get updated;

  @nullable
  BuiltList<Alternate> get alternate;

  @nullable
  String get direction;

  @nullable
  String get continuation;

  @nullable
  BuiltList<FeedlyContentsItems> get items;

  FeedlyContents._();

  factory FeedlyContents([updates(FeedlyContentsBuilder b)]) = _$FeedlyContents;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FeedlyContents.serializer, this));
  }

  static FeedlyContents fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyContents.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyContents> get serializer =>
      _$feedlyContentsSerializer;
}
