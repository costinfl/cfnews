library home_list_item;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'home_list_item.g.dart';

abstract class HomeListItem
    implements Built<HomeListItem, HomeListItemBuilder> {
  @nullable
  String get title;

  @nullable
  String get publishDate;

  @nullable
  String get coverUrl;

  @nullable
  int get updated;

  @nullable
  String get articleUrl;

  @nullable
  String get iconUrl;

  @nullable
  String get visualUrl;

  @nullable
  String get coverColor; //"9AE4E8"

  @nullable
  String get content;

  HomeListItem._();

  factory HomeListItem([updates(HomeListItemBuilder b)]) = _$HomeListItem;

  String toJson() {
    return json
        .encode(serializers.serializeWith(HomeListItem.serializer, this));
  }

  static HomeListItem fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeListItem.serializer, json.decode(jsonString));
  }

  static Serializer<HomeListItem> get serializer => _$homeListItemSerializer;
}
