library feedly_contents_items;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/common/model_common.dart';
import 'package:cfnews/data/model/contents/enclosure.dart';
import 'package:cfnews/data/model/contents/feedly_content.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_contents_items.g.dart';

abstract class FeedlyContentsItems
    implements Built<FeedlyContentsItems, FeedlyContentsItemsBuilder> {
  FeedlyContentsItems._();

  @nullable
  String get id;

  @nullable
  BuiltList<String> get keywords;

  @nullable
  String get originId;

  @nullable
  String get fingerprint;

  @nullable
  Content get content;

  @nullable
  String get title;

  @nullable
  String get author;

  @nullable
  Summary get summary;

  @nullable
  BuiltList<Alternate> get alternate;

//  BuiltList<Canonical> get canonical;
  @nullable
  int get crawled;

  @nullable
  int get published;

  @nullable
  Origin get origin;

  @nullable
  Visual get visual;

  @nullable
  String get canonicalUrl;

  @nullable
  String get ampUrl;

  @nullable
  String get cdnAmpUrl;

  @nullable
  bool get unread;

  @nullable
  BuiltList<Categories> get categories;

  @nullable
  BuiltList<CommonTopics> get commonTopics;

  @nullable
  BuiltList<Entities> get entities;

  @nullable
  BuiltList<Enclosure> get enclosure;

  @nullable
  int get engagement;

  @nullable
  double get engagementRate;

  factory FeedlyContentsItems([updates(FeedlyContentsItemsBuilder b)]) =
      _$FeedlyContentsItems;

  String toJson() {
    return json.encode(
        serializers.serializeWith(FeedlyContentsItems.serializer, this));
  }

  static FeedlyContentsItems fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyContentsItems.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyContentsItems> get serializer =>
      _$feedlyContentsItemsSerializer;
}
