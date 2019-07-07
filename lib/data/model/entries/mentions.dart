library mentions;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'mentions.g.dart';

abstract class Mentions implements Built<Mentions, MentionsBuilder> {
  @nullable
  String get text;

  Mentions._();

  factory Mentions([updates(MentionsBuilder b)]) = _$Mentions;

  String toJson() {
    return json.encode(serializers.serializeWith(Mentions.serializer, this));
  }

  static Mentions fromJson(String jsonString) {
    return serializers.deserializeWith(
        Mentions.serializer, json.decode(jsonString));
  }

  static Serializer<Mentions> get serializer => _$mentionsSerializer;
}
