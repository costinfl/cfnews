library feedly_content;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'feedly_content.g.dart';

abstract class Content
    implements Built<Content, ContentBuilder> {
  @nullable
  String get content;

  @nullable
  String get direction;

  Content._();

  factory Content([updates(ContentBuilder b)]) = _$Content;

  String toJson() {
    return json
        .encode(serializers.serializeWith(Content.serializer, this));
  }

  static Content fromJson(String jsonString) {
    return serializers.deserializeWith(
        Content.serializer, json.decode(jsonString));
  }

  static Serializer<Content> get serializer => _$contentSerializer;
}
