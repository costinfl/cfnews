library summary;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'summary.g.dart';

abstract class Summary implements Built<Summary, SummaryBuilder> {
  @nullable
  String get content;

  @nullable
  String get direction;

  Summary._();

  factory Summary([updates(SummaryBuilder b)]) = _$Summary;

  String toJson() {
    return json.encode(serializers.serializeWith(Summary.serializer, this));
  }

  static Summary fromJson(String jsonString) {
    return serializers.deserializeWith(
        Summary.serializer, json.decode(jsonString));
  }

  static Serializer<Summary> get serializer => _$summarySerializer;
}
