library feedly_entries_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/entries/feedly_entry.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_entries_result.g.dart';

abstract class FeedlyEntriesResult
    implements Built<FeedlyEntriesResult, FeedlyEntriesResultBuilder> {

  BuiltList<FeedlyEntry> get entries;

  FeedlyEntriesResult._();

  factory FeedlyEntriesResult(
      [updates(FeedlyEntriesResultBuilder b)]) = _$FeedlyEntriesResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(FeedlyEntriesResult.serializer, this));
  }

  static FeedlyEntriesResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyEntriesResult.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyEntriesResult> get serializer =>
      _$feedlyEntriesResultSerializer;
}