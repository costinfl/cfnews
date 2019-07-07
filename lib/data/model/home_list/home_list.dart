library home_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/model/home_list/home_list_item.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'home_list.g.dart';

abstract class HomeList implements Built<HomeList, HomeListBuilder> {

  BuiltList<HomeListItem> get items;

  HomeList._();

  factory HomeList([updates(HomeListBuilder b)]) = _$HomeList;

  String toJson() {
    return json.encode(serializers.serializeWith(HomeList.serializer, this));
  }

  static HomeList fromJson(String jsonString) {
    return serializers.deserializeWith(
        HomeList.serializer, json.decode(jsonString));
  }

  static Serializer<HomeList> get serializer => _$homeListSerializer;
}
