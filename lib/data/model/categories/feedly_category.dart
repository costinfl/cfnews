library feedly_category;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_category.g.dart';

abstract class FeedlyCategory
    implements Built<FeedlyCategory, FeedlyCategoryBuilder> {
  String get id;

  @nullable
  String get label;

  @nullable
  int get created;

  FeedlyCategory._();

  factory FeedlyCategory([updates(FeedlyCategoryBuilder b)]) = _$FeedlyCategory;

  String toJson() {
    return json
        .encode(serializers.serializeWith(FeedlyCategory.serializer, this));
  }

  static FeedlyCategory fromJson(String jsonString) {
    return serializers.deserializeWith(
        FeedlyCategory.serializer, json.decode(jsonString));
  }

  static Serializer<FeedlyCategory> get serializer =>
      _$feedlyCategorySerializer;
}
