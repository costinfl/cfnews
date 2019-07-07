library feedly_categories_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/categories/feedly_category.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_categories_result.g.dart';

abstract class FeedlyCategoriesResult implements Built<FeedlyCategoriesResult, FeedlyCategoriesResultBuilder> {

  BuiltList<FeedlyCategory> get categories;

  FeedlyCategoriesResult._();

  factory FeedlyCategoriesResult([updates(FeedlyCategoriesResultBuilder b)]) = _$FeedlyCategoriesResult;

  String toJson() {
    return json.encode(serializers.serializeWith(FeedlyCategoriesResult.serializer, this));
  }

  static FeedlyCategoriesResult fromJson(String jsonString) {
    return serializers.deserializeWith(FeedlyCategoriesResult.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyCategoriesResult> get serializer => _$feedlyCategoriesResultSerializer;
}