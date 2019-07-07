library visual;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'visual.g.dart';

abstract class Visual implements Built<Visual, VisualBuilder> {
  @nullable
  String get processor;

  @nullable
  String get url;

  @nullable
  int get width;

  @nullable
  int get height;

  @nullable
  String get contentType;

  Visual._();

  factory Visual([updates(VisualBuilder b)]) = _$Visual;

  String toJson() {
    return json.encode(serializers.serializeWith(Visual.serializer, this));
  }

  static Visual fromJson(String jsonString) {
    return serializers.deserializeWith(
        Visual.serializer, json.decode(jsonString));
  }

  static Serializer<Visual> get serializer => _$visualSerializer;
}
