library common_topics;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'common_topics.g.dart';

abstract class CommonTopics
    implements Built<CommonTopics, CommonTopicsBuilder> {
  @nullable
  String get id;

  @nullable
  String get label;

  CommonTopics._();

  factory CommonTopics([updates(CommonTopicsBuilder b)]) = _$CommonTopics;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CommonTopics.serializer, this));
  }

  static CommonTopics fromJson(String jsonString) {
    return serializers.deserializeWith(
        CommonTopics.serializer, json.decode(jsonString));
  }

  static Serializer<CommonTopics> get serializer => _$commonTopicsSerializer;
}
