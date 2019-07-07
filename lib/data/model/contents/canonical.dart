library canonical;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'canonical.g.dart';

abstract class Canonical implements Built<Canonical, CanonicalBuilder> {



  Canonical._();

  factory Canonical([updates(CanonicalBuilder b)]) = _$Canonical;

  String toJson() {
    return json.encode(serializers.serializeWith(Canonical.serializer, this));
  }

  static Canonical fromJson(String jsonString) {
    return serializers.deserializeWith(
        Canonical.serializer, json.decode(jsonString));
  }

  static Serializer<Canonical> get serializer => _$canonicalSerializer;
}