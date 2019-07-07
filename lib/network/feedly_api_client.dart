import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:cfnews/data/model/categories/model_categories.dart';
import 'package:cfnews/data/model/collections/model_collections.dart';
import 'package:cfnews/data/model/common/feedly_error.dart';
import 'package:cfnews/data/model/contents/model_feedly_contents.dart';
import 'package:cfnews/data/model/entries/model_entries.dart';
import 'package:cfnews/data/model/streams_ids/model_stream_ids.dart';
import 'package:cfnews/data/serializers/serializers.dart';
import 'package:cfnews/network/api_key.dart';
import 'package:http/http.dart' as http;

class FeedlyApiClient {
  final http.Client httpClient;
  static const int count = 20;

  final String _feedlyBaseUrl = 'https://cloud.feedly.com';
  final String version = '/v3';
  final String entries = '/entries/.mget';
  final String streamsIds = '/streams/ids?';
  final String streamContents = '/streams/contents?';
  final String collections = '/collections';
  final String categories = '/categories?sort=feedly';

  FeedlyApiClient(this.httpClient);

  Future<FeedlyCollectionsResult> getCollections() async {
    final initialUrl = _feedlyBaseUrl + version + collections;
    final encodedUrl = Uri.encodeFull(initialUrl);
    final response = await httpClient.get(encodedUrl, headers: FEEDLY_HEADERS);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return FeedlyCollectionsResult((x) => x
        ..collections = ListBuilder<FeedlyCollection>(data.map(
          (m) {
            return serializers.deserializeWith(FeedlyCollection.serializer, m);
          },
        ).toList()));
    } else {
      throw FeedlyError(FeedlyError.generalError);
    }
  }

  Future<FeedlyCategoriesResult> getCategories() async {
    final initialUrl = _feedlyBaseUrl + version + categories;
    final encodedUrl = Uri.encodeFull(initialUrl);
    final response = await httpClient.get(encodedUrl, headers: FEEDLY_HEADERS);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return FeedlyCategoriesResult((x) => x
        ..categories = ListBuilder<FeedlyCategory>(data.map(
          (m) {
            return serializers.deserializeWith(FeedlyCategory.serializer, m);
          },
        ).toList()));
    } else {
      throw FeedlyError(FeedlyError.generalError);
    }
  }

  Future<FeedlyStreamIds> getStream(String categoryId,
      {int count = 20, String continuationToken = ''}) async {
    final initialUrl = _feedlyBaseUrl +
        version +
        streamsIds +
        'streamId=$categoryId' +
        '&count=$count' +
        '&continuation=$continuationToken';
    final encodedUrl = Uri.encodeFull(initialUrl);
    final response = await httpClient.get(encodedUrl, headers: FEEDLY_HEADERS);

    if (response.statusCode == 200) {
      return FeedlyStreamIds.fromJson(response.body);
    } else {
      throw FeedlyError(FeedlyError.generalError);
    }
  }

  Future<FeedlyContents> getContent(String categoryId,
      {int count = 20, String continuationToken = ''}) async {
    final initialUrl = _feedlyBaseUrl +
        version +
        streamContents +
        'streamId=$categoryId' +
        '&count=$count' +
        '&continuation=$continuationToken';
    final encodedUrl = Uri.encodeFull(initialUrl);
    final response = await httpClient.get(encodedUrl, headers: FEEDLY_HEADERS);

    if (response.statusCode == 200) {
      return FeedlyContents.fromJson(response.body);
    } else {
      throw FeedlyError(FeedlyError.generalError);
    }
  }

  Future<FeedlyEntriesResult> getEntries(List<String> allStreamIds) async {
    final initialUrl = _feedlyBaseUrl + version + entries;
    final encodedUrl = Uri.encodeFull(initialUrl);

    final response = await httpClient.post(
      encodedUrl,
      headers: FEEDLY_HEADERS,
      body: json.encode(allStreamIds),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return FeedlyEntriesResult((x) => x
        ..entries = ListBuilder<FeedlyEntry>(data.map(
          (m) {
            return serializers.deserializeWith(FeedlyEntry.serializer, m);
          },
        ).toList()));
    } else {
      throw FeedlyError(FeedlyError.generalError);
    }
  }
}
