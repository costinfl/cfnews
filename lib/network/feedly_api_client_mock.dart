import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:cfnews/data/model/categories/model_categories.dart';
import 'package:cfnews/data/model/collections/model_collections.dart';
import 'package:cfnews/data/model/common/mock_results.dart';
import 'package:cfnews/data/model/contents/model_feedly_contents.dart';
import 'package:cfnews/data/model/entries/model_entries.dart';
import 'package:cfnews/data/model/streams_ids/model_stream_ids.dart';
import 'package:cfnews/data/serializers/serializers.dart';
import 'package:http/http.dart' as http;

class FeedlyApiClientMock {
  final http.Client httpClient;

  FeedlyApiClientMock(this.httpClient);

  Future<FeedlyCollectionsResult> getCollections() async {
//    await Future.delayed(new Duration(seconds: 2));
    final List<dynamic> data = json.decode(MockResults.COLLECTIONS_MOCK2);
    return FeedlyCollectionsResult((x) => x
      ..collections = ListBuilder<FeedlyCollection>(data.map(
        (m) {
          return serializers.deserializeWith(FeedlyCollection.serializer, m);
        },
      ).toList()));
  }

  Future<FeedlyCategoriesResult> getCategories() async {
//    await Future.delayed(new Duration(seconds: 2));
    final List<dynamic> data = json.decode(MockResults.CATEGORIES_MOCK2);
    return FeedlyCategoriesResult((x) => x
      ..categories = ListBuilder<FeedlyCategory>(data.map(
        (m) {
          return serializers.deserializeWith(FeedlyCategory.serializer, m);
        },
      ).toList()));
  }

  Future<FeedlyStreamIds> getStream(String categoryId,
      {int count = 20, String continuationToken = ''}) async {
    return FeedlyStreamIds.fromJson(MockResults.STREAM_IDS_DIGI24_MOCK);
  }


  Future<FeedlyContents> getContent(String categoryId,
      {int count = 20, String continuationToken = ''}) async {
    return FeedlyContents.fromJson(MockResults.CONTENTS_DIGI24_MOCK);
  }

  Future<FeedlyEntriesResult> getEntries(List<String> allStreamIds) async {
    await Future.delayed(new Duration(milliseconds: 300));
    final List<dynamic> data = json.decode(MockResults.ENTRIES_DIGI24_SOME_MOCK);
    return FeedlyEntriesResult((x) => x
      ..entries = ListBuilder<FeedlyEntry>(data.map(
        (m) {
          return serializers.deserializeWith(FeedlyEntry.serializer, m);
        },
      ).toList()));
  }
}
