library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:cfnews/data/model/article/model_article.dart';
import 'package:cfnews/data/model/categories/model_categories.dart';
import 'package:cfnews/data/model/collections/model_collections.dart';
import 'package:cfnews/data/model/common/model_common.dart';
import 'package:cfnews/data/model/contents/model_feedly_contents.dart';
import 'package:cfnews/data/model/entries/model_entries.dart';
import 'package:cfnews/data/model/home_list/model_home_list.dart';
import 'package:cfnews/data/model/streams_ids/model_stream_ids.dart';
import 'package:cfnews/data/model/user_feed/model_user_feed.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  FeedlyCollection,
  FeedlyCollectionsResult,
  FeedlyCategory,
  FeedlyCollectionsResult,
  FeedlyFeeds,
  Article,
  UserFeed,
  FeedlyStreamIds,
  HomeList,
  HomeListItem,
  FeedlyEntriesResult,
  FeedlyEntry,
  Alternate,
  Categories,
  CommonTopics,
  Origin,
  Visual,
  Summary,
  Entities,
  Mentions,
  FeedlyContents,
  FeedlyContentsItems,
  Content,
  Enclosure
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
