library article;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cfnews/data/serializers/serializers.dart';

part 'article.g.dart';

abstract class Article implements Built<Article, ArticleBuilder> {
  int get id;

  @nullable
  String get title;

  @nullable
  String get content;

  @nullable
  String get logoUrl;

  @nullable
  String get imageUrl;

  @nullable
  String get url;

  @nullable
  String get published;

  @nullable
  String get dateSaved;

  Article._();

  factory Article([updates(ArticleBuilder b)]) = _$Article;

  String toJson() {
    return json.encode(serializers.serializeWith(Article.serializer, this));
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'logoUrl': logoUrl,
      'imageUrl': imageUrl,
      'url': url,
      'published': published,
      'dateSaved': dateSaved,
    };
  }

  static Article fromJson(String jsonString) {
    return serializers.deserializeWith(
        Article.serializer, json.decode(jsonString));
  }

  static Serializer<Article> get serializer => _$articleSerializer;

  static Article fromMap(Map<String, dynamic> value) {
    return Article(
      (b) => b
        ..id = value['id']
        ..title = value['title']
        ..content = value['content']
        ..logoUrl = value['logoUrl']
        ..imageUrl = value['imageUrl']
        ..url = value['url']
        ..dateSaved = value['dateSaved']
        ..published = value['published'],
    );
  }
}
