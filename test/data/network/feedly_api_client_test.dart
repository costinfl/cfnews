import 'dart:io';

import 'package:cfnews/data/model/categories/model_categories.dart';
import 'package:cfnews/data/model/collections/model_collections.dart';
import 'package:cfnews/data/model/contents/feedly_contents.dart';
import 'package:cfnews/data/model/entries/feedly_entries_result.dart';
import 'package:cfnews/data/model/streams_ids/feedly_stream_ids.dart';
import 'package:cfnews/network/feedly_api_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:matcher/matcher.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  String fixtures(String name) =>
      File('test/data/fixtures/$name.json').readAsStringSync();

  MockClient mockClient;
  FeedlyApiClient feedlyApiClient;

  setUp(() {
    mockClient = MockClient();
    feedlyApiClient = FeedlyApiClient(mockClient);
  });

  group('getCollections', () {
    test(
      'return FeedlyCollectionsResult '
      'when the call '
      'completes successfully',
      () async {
        when(
          mockClient.get(
            argThat(
              startsWith('https://cloud.feedly.com'),
            ),
            headers: anyNamed('headers'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
                fixtures('collections_response'),
                200,
                headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8'
                },
              ),
        );
        FeedlyCollectionsResult result = await feedlyApiClient.getCollections();

        expect(result, TypeMatcher<FeedlyCollectionsResult>());
        expect(result.collections.isNotEmpty, true);
        expect(result.collections.length, 126);
        expect(result.collections[0].label, 'Adevarul');
      },
    );
  });
  group('getCategories', () {
    test(
      'return FeedlyCategoriesResult '
      'when the call '
      'completes successfully',
      () async {
        when(
          mockClient.get(
            argThat(
              startsWith('https://cloud.feedly.com'),
            ),
            headers: anyNamed('headers'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
                fixtures('categories_response'),
                200,
                headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8'
                },
              ),
        );
        FeedlyCategoriesResult result = await feedlyApiClient.getCategories();

        expect(result, TypeMatcher<FeedlyCategoriesResult>());
        expect(result.categories.isNotEmpty, true);
        expect(result.categories.length, 126);
        expect(result.categories[0].label, 'Africa');
      },
    );
  });

  group('getStream', () {
    test(
      'return FeedlyStreamIds '
      'when the call with categoryId and NO token '
      'completes successfully',
      () async {
        when(
          mockClient.get(
            argThat(
              startsWith('https://cloud.feedly.com'),
            ),
            headers: anyNamed('headers'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
                fixtures('stream_ids_response'),
                200,
                headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8'
                },
              ),
        );
        var categoryId =
            r'user/afe691b3-4838-42a5-b7f5-a86266db72e2/category/4cbc5f43-fcb9-4909-af6e-71f8a1c525cb';
        var continuationToken = '';
        FeedlyStreamIds result = await feedlyApiClient.getStream(
            categoryId = categoryId,
            continuationToken: continuationToken);

        expect(result, TypeMatcher<FeedlyStreamIds>());
        expect(result.streamIds.isNotEmpty, true);
        expect(result.streamIds.length, 20);
        expect(result.streamIds[0],
            'n5T9WfR/8nwq+3CA1z+6ZLU0lLlLYLRqsiymGatIfF4=_16b4c8ba633:4d62557:247b6d24');
      },
    );

    test(
      'return FeedlyStreamIds the next page '
      'when the call with categoryid an token '
      'completes successfully',
      () async {
        var categoryId =
            r'user/afe691b3-4838-42a5-b7f5-a86266db72e2/category/4cbc5f43-fcb9-4909-af6e-71f8a1c525cb';
        var continuationToken = '16b4c2aff8e:4b3350b:5de7e37';

        when(
          mockClient.get(
            argThat(
              startsWith('https://cloud.feedly.com'),
            ),
            headers: anyNamed('headers'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
                fixtures('stream_ids_next_page_response'),
                200,
                headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8'
                },
              ),
        );

        FeedlyStreamIds result = await feedlyApiClient.getStream(
            categoryId = categoryId,
            continuationToken: continuationToken);

        expect(result, TypeMatcher<FeedlyStreamIds>());
        expect(result.streamIds.isNotEmpty, true);
        expect(result.streamIds.length, 20);
        expect(result.streamIds[0],
            'YiiLsIgmTge3ngajjpuONVwOLD4xCjNEssw3BLM+/ss=_16b4c2aff8e:4b3350a:5de7e37');
        expect(result.continuationToken, '16b4ba9ae9c:4a66abd:5de7e37');
      },
    );
  });

  group('getEntries', () {
    test(
      'return FeedlyEntriesResult '
      'when the call with some streamIds'
      'completes successfully',
      () async {
        List<String> allStreamIds = <String>[
          "n5T9WfR/8nwq+3CA1z+6ZLU0lLlLYLRqsiymGatIfF4=_16b4c8ba633:4d62557:247b6d24",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c8706e3:4d5ba01:247b6d24",
          "7RfqH10TmVEo3FKkm62kA9GEph7vsuWEhLx7jpFMU/g=_16b4c7c5b17:4bc0bf8:5de7e37",
          "YiiLsIgmTge3ngajjpuONVwOLD4xCjNEssw3BLM+/ss=_16b4c7ab895:4d437d6:d02fd57c",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c738b88:4bb1146:5de7e37",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c6cf7cd:4ba6754:5de7e37",
          "7RfqH10TmVEo3FKkm62kA9GEph7vsuWEhLx7jpFMU/g=_16b4c60d36f:4b93d4b:5de7e37",
          "YiiLsIgmTge3ngajjpuONVwOLD4xCjNEssw3BLM+/ss=_16b4c603884:4d1a2ef:d02fd57c",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c5fd3df:4d19ad2:d02fd57c",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c52c0b6:4d02f8f:d02fd57c",
          "pNXxdMiCPNDSAQw+8mmxATazjo1qJCd8aJZccPkKqi4=_16b4c47cf2e:4b6bf83:5de7e37",
          "7RfqH10TmVEo3FKkm62kA9GEph7vsuWEhLx7jpFMU/g=_16b4c45448c:4ceb4db:d02fd57c",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c3e4013:4b50bd1:5de7e37",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c3e4013:4b50bd0:5de7e37",
          "YiiLsIgmTge3ngajjpuONVwOLD4xCjNEssw3BLM+/ss=_16b4c3863cc:4b46f8d:5de7e37",
          "YiiLsIgmTge3ngajjpuONVwOLD4xCjNEssw3BLM+/ss=_16b4c3863cc:4b46f8c:5de7e37",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c3123c4:4b3c02b:5de7e37",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c3123c4:4b3c02a:5de7e37",
          "r6xLrrDsniIRKvgcc3zGVVUAyQhMnBtDyHv+YvxWW0k=_16b4c3123c4:4b3c029:5de7e37",
          "YiiLsIgmTge3ngajjpuONVwOLD4xCjNEssw3BLM+/ss=_16b4c2aff8e:4b3350b:5de7e37"
        ];

        when(
          mockClient.post(
            argThat(
              startsWith('https://cloud.feedly.com'),
            ),
            headers: anyNamed('headers'),
            body: anyNamed('body'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
                fixtures('entries_response'),
                200,
                headers: {
                  HttpHeaders.contentTypeHeader:
                      'application/json; charset=utf-8'
                },
              ),
        );

        FeedlyEntriesResult result =
            await feedlyApiClient.getEntries(allStreamIds);

        expect(result, TypeMatcher<FeedlyEntriesResult>());
        expect(result.entries.isNotEmpty, true);
        expect(result.entries.length, allStreamIds.length);
        expect(result.entries[0].canonicalUrl,
            'https://www.libyaherald.com/2019/06/12/sewage-contaminated-tripoli-beaches-unfit-for-swimming-or-fishing/');
      },
    );


  });
  group('getContents', () {
    test(
      'return FeedlyContents '
          'when the call with categoryId and NO token '
          'completes successfully',
          () async {
        when(
          mockClient.get(
            argThat(
              startsWith('https://cloud.feedly.com'),
            ),
            headers: anyNamed('headers'),
          ),
        ).thenAnswer(
              (_) async => http.Response(
            fixtures('digi24_category_response'),
            200,
            headers: {
              HttpHeaders.contentTypeHeader:
              'application/json; charset=utf-8'
            },
          ),
        );
        var categoryId =
            r'user/afe691b3-4838-42a5-b7f5-a86266db72e2/category/Digi24';
        var continuationToken = '';
        FeedlyContents result = await feedlyApiClient.getContent(
            categoryId = categoryId,
            continuationToken: continuationToken);

        expect(result, TypeMatcher<FeedlyContents>());
        expect(result.items.isNotEmpty, true);
        expect(result.items.length, 20);
        expect(result.items[0].id,
            'hawBF66djJ94L1QtvL7mdfx5tPpCcjTAra9O7PyLUSQ=_16b70c5ae93:2f047f:b86676c0');
        expect(result.items[0].content.content,
            "Ludovic Orban a declarat la Jurnalul de Seară de la Digi24 că afirmația conform cărora alegerile ar fi fost fraudate este „o chestie de cascadorii râsului” şi că „alegerile au fost atât de corecte cât de bine organizate au fost de acest guvern”.");
      },
    );
  });
}
