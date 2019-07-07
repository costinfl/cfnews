library entities;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/entries/mentions.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'entities.g.dart';

abstract class Entities implements Built<Entities, EntitiesBuilder> {
  @nullable
  String get id;

  @nullable
  String get salienceLevel;

  @nullable
  String get label;

  @nullable
  BuiltList<Mentions> get mentions;

  Entities._();

  factory Entities([updates(EntitiesBuilder b)]) = _$Entities;

  String toJson() {
    return json.encode(serializers.serializeWith(Entities.serializer, this));
  }

  static Entities fromJson(String jsonString) {
    return serializers.deserializeWith(
        Entities.serializer, json.decode(jsonString));
  }

  static Serializer<Entities> get serializer => _$entitiesSerializer;
}
