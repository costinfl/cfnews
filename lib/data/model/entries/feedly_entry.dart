library feedly_entry;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/common/alternate.dart';
import 'package:cfnews/data/model/common/categories.dart';
import 'package:cfnews/data/model/common/common_topics.dart';
import 'package:cfnews/data/model/common/entities.dart';
import 'package:cfnews/data/model/common/origin.dart';
import 'package:cfnews/data/model/common/summary.dart';
import 'package:cfnews/data/model/common/visual.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_entry.g.dart';

abstract class FeedlyEntry implements Built<FeedlyEntry, FeedlyEntryBuilder> {
  @nullable
  String get id;

  @nullable
  BuiltList<String> get keywords;

  @nullable
  String get originId;

  @nullable
  int get recrawed;

  @nullable
  int get updateCount;

  @nullable
  String get fingerprint;

  @nullable
  String get title;

  @nullable
  Summary get summary;

  @nullable
  BuiltList<Alternate> get alternate;

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

  FeedlyEntry._();

  factory FeedlyEntry([updates(FeedlyEntryBuilder b)]) = _$FeedlyEntry;

  String toJson() {
    return json.encode(serializers.serializeWith(FeedlyEntry.serializer, this));
  }

  static FeedlyEntry fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyEntry.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyEntry> get serializer => _$feedlyEntrySerializer;
}
