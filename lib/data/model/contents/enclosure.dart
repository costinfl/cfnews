library enclosure;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'enclosure.g.dart';

abstract class Enclosure implements Built<Enclosure, EnclosureBuilder> {
  @nullable
  String get href;

  @nullable
  String get type;

  @nullable
  int get length;

  Enclosure._();

  factory Enclosure([updates(EnclosureBuilder b)]) = _$Enclosure;

  String toJson() {
    return json.encode(serializers.serializeWith(Enclosure.serializer, this));
  }

  static Enclosure fromJson(String jsonString) {
    return serializers.deserializeWith(
        Enclosure.serializer, json.decode(jsonString));
  }

  static Serializer<Enclosure> get serializer => _$enclosureSerializer;
}
