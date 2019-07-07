library alternate;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'alternate.g.dart';

abstract class Alternate implements Built<Alternate, AlternateBuilder> {
  @nullable
  String get href;

  @nullable
  String get type;

  Alternate._();

  factory Alternate([updates(AlternateBuilder b)]) = _$Alternate;

  String toJson() {
    return json.encode(serializers.serializeWith(Alternate.serializer, this));
  }

  static Alternate fromJson(String jsonString) {
    return serializers.deserializeWith(
        Alternate.serializer, json.decode(jsonString));
  }

  static Serializer<Alternate> get serializer => _$alternateSerializer;
}
