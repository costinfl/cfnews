library categories;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'categories.g.dart';

abstract class Categories implements Built<Categories, CategoriesBuilder> {
  @nullable
  String get id;

  @nullable
  String get label;

  Categories._();

  factory Categories([updates(CategoriesBuilder b)]) = _$Categories;

  String toJson() {
    return json.encode(serializers.serializeWith(Categories.serializer, this));
  }

  static Categories fromJson(String jsonString) {
    return serializers.deserializeWith(
        Categories.serializer, json.decode(jsonString));
  }

  static Serializer<Categories> get serializer => _$categoriesSerializer;
}
