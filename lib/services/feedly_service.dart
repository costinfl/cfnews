import 'package:cfnews/data/model/categories/model_categories.dart';
import 'package:cfnews/data/model/collections/model_collections.dart';
import 'package:cfnews/data/model/contents/model_feedly_contents.dart';
import 'package:cfnews/data/model/entries/model_entries.dart';
import 'package:cfnews/data/model/streams_ids/model_stream_ids.dart';
import 'package:cfnews/network/feedly_api_client.dart';
import 'package:cfnews/network/feedly_api_client_mock.dart';

class FeedlyService {
//  FeedlyApiClientMock _feedlyApiClient;

  FeedlyApiClient _feedlyApiClient;

  Map<String, String> _nextPageCache = Map();

  FeedlyService(this._feedlyApiClient);

  void _cacheValues({String categoryId, String continuationToken}) {
    _nextPageCache.update(categoryId, (String val) => continuationToken,
        ifAbsent: () => continuationToken);
  }

  Future<FeedlyCollectionsResult> retrieveFeedlyCollections() async {
    final response = await _feedlyApiClient.getCollections();

    if (response.collections.isEmpty) {
      throw NoFeedlyCollectionsResultException();
    }
    return response;
  }

  Future<FeedlyCategoriesResult> retrieveFeedlyCategories() async {
    final response = await _feedlyApiClient.getCategories();

    if (response.categories.isEmpty) {
      throw NoFeedlyCategoriesResultException();
    }
    return response;
  }

  Future<FeedlyStreamIds> retrieveFeedlyStreamIds(String categoryId) async {
    final response = await _feedlyApiClient.getStream(categoryId);
    _cacheValues(
      categoryId: categoryId,
      continuationToken: response.continuationToken,
    );
    if (response.streamIds.isEmpty) {
      throw NoFeedlyStreamIdsResultException();
    }
    return response;
  }

  Future<FeedlyStreamIds> retrieveNextPageStream(
      {String categoryId, String continuationToken}) async {
    if (_nextPageCache.containsKey(categoryId) &&
        _nextPageCache[categoryId] == null) {
      throw TokenMissingException();
    }
    final nextPageStream = await _feedlyApiClient.getStream(categoryId,
        continuationToken: continuationToken);
    _cacheValues(
      categoryId: categoryId,
      continuationToken: nextPageStream.continuationToken,
    );
    return nextPageStream;
  }

  Future<FeedlyContents> retrieveFeedlyContents(String categoryId) async {
    final response = await _feedlyApiClient.getContent(categoryId);
    _cacheValues(
      categoryId: categoryId,
      continuationToken: response.continuation,
    );
    if (response.items.isEmpty) {
      throw NoFeedlyContentsResultException();
    }
    return response;
  }

  Future<FeedlyContents> retrieveNextPageFeedlyContents(
      {String categoryId, String continuationToken}) async {
    if (_nextPageCache.containsKey(categoryId) &&
        _nextPageCache[categoryId] == null) {
      throw TokenMissingException();
    }
    final feedlyContents = await _feedlyApiClient.getContent(categoryId,
        continuationToken: continuationToken);
    _cacheValues(
      categoryId: categoryId,
      continuationToken: feedlyContents.continuation,
    );
    return feedlyContents;
  }

  Future<FeedlyEntriesResult> retrieveFeedlyEntries(
      List<String> allStreamIds) async {
    final response = await _feedlyApiClient.getEntries(allStreamIds);
    if (response.entries.isEmpty) {
      throw NoFeedlyEntriesResultException();
    }
    return response;
  }
}

class NoFeedlyStreamIdsResultException implements Exception {
  final message = 'No results for Stream Ids';
}

class NoFeedlyContentsResultException implements Exception {
  final message = 'No results for Contents';
}

class NoFeedlyCollectionsResultException implements Exception {
  final message = 'No results for Collections';
}

class NoFeedlyCategoriesResultException implements Exception {
  final message = 'No results for Categories';
}

class NoFeedlyEntriesResultException implements Exception {
  final message = 'No results for Entries';
}

class TokenMissingException implements Exception {}
