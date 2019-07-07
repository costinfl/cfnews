library origin;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'origin.g.dart';

abstract class Origin implements Built<Origin, OriginBuilder> {
  @nullable
  String get streamId;

  @nullable
  String get title;

  @nullable
  String get htmlUrl;

  Origin._();

  factory Origin([updates(OriginBuilder b)]) = _$Origin;

  String toJson() {
    return json.encode(serializers.serializeWith(Origin.serializer, this));
  }

  static Origin fromJson(String jsonString) {
    return serializers.deserializeWith(
        Origin.serializer, json.decode(jsonString));
  }

  static Serializer<Origin> get serializer => _$originSerializer;
}
