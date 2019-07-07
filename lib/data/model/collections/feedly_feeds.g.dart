// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_feeds;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyFeeds> _$feedlyFeedsSerializer = new _$FeedlyFeedsSerializer();

class _$FeedlyFeedsSerializer implements StructuredSerializer<FeedlyFeeds> {
  @override
  final Iterable<Type> types = const [FeedlyFeeds, _$FeedlyFeeds];
  @override
  final String wireName = 'FeedlyFeeds';

  @override
  Iterable serialize(Serializers serializers, FeedlyFeeds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'feedId',
      serializers.serialize(object.feedId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'velocity',
      serializers.serialize(object.velocity,
          specifiedType: const FullType(double)),
      'topics',
      serializers.serialize(object.topics,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'subscribers',
      serializers.serialize(object.subscribers,
          specifiedType: const FullType(int)),
    ];
    if (object.updated != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(object.updated,
            specifiedType: const FullType(int)));
    }
    if (object.website != null) {
      result
        ..add('website')
        ..add(serializers.serialize(object.website,
            specifiedType: const FullType(String)));
    }
    if (object.estimatedEngagement != null) {
      result
        ..add('estimatedEngagement')
        ..add(serializers.serialize(object.estimatedEngagement,
            specifiedType: const FullType(int)));
    }
    if (object.partial != null) {
      result
        ..add('partial')
        ..add(serializers.serialize(object.partial,
            specifiedType: const FullType(bool)));
    }
    if (object.coverUrl != null) {
      result
        ..add('coverUrl')
        ..add(serializers.serialize(object.coverUrl,
            specifiedType: const FullType(String)));
    }
    if (object.iconUrl != null) {
      result
        ..add('iconUrl')
        ..add(serializers.serialize(object.iconUrl,
            specifiedType: const FullType(String)));
    }
    if (object.visualUrl != null) {
      result
        ..add('visualUrl')
        ..add(serializers.serialize(object.visualUrl,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.contentType != null) {
      result
        ..add('contentType')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.coverColor != null) {
      result
        ..add('coverColor')
        ..add(serializers.serialize(object.coverColor,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FeedlyFeeds deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyFeedsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feedId':
          result.feedId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'velocity':
          result.velocity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'topics':
          result.topics.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'subscribers':
          result.subscribers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'estimatedEngagement':
          result.estimatedEngagement = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'partial':
          result.partial = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'coverUrl':
          result.coverUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iconUrl':
          result.iconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visualUrl':
          result.visualUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coverColor':
          result.coverColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyFeeds extends FeedlyFeeds {
  @override
  final String id;
  @override
  final String feedId;
  @override
  final String title;
  @override
  final int updated;
  @override
  final double velocity;
  @override
  final BuiltList<String> topics;
  @override
  final int subscribers;
  @override
  final String website;
  @override
  final int estimatedEngagement;
  @override
  final bool partial;
  @override
  final String coverUrl;
  @override
  final String iconUrl;
  @override
  final String visualUrl;
  @override
  final String language;
  @override
  final String contentType;
  @override
  final String description;
  @override
  final String coverColor;

  factory _$FeedlyFeeds([void Function(FeedlyFeedsBuilder) updates]) =>
      (new FeedlyFeedsBuilder()..update(updates)).build();

  _$FeedlyFeeds._(
      {this.id,
      this.feedId,
      this.title,
      this.updated,
      this.velocity,
      this.topics,
      this.subscribers,
      this.website,
      this.estimatedEngagement,
      this.partial,
      this.coverUrl,
      this.iconUrl,
      this.visualUrl,
      this.language,
      this.contentType,
      this.description,
      this.coverColor})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('FeedlyFeeds', 'id');
    }
    if (feedId == null) {
      throw new BuiltValueNullFieldError('FeedlyFeeds', 'feedId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('FeedlyFeeds', 'title');
    }
    if (velocity == null) {
      throw new BuiltValueNullFieldError('FeedlyFeeds', 'velocity');
    }
    if (topics == null) {
      throw new BuiltValueNullFieldError('FeedlyFeeds', 'topics');
    }
    if (subscribers == null) {
      throw new BuiltValueNullFieldError('FeedlyFeeds', 'subscribers');
    }
  }

  @override
  FeedlyFeeds rebuild(void Function(FeedlyFeedsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyFeedsBuilder toBuilder() => new FeedlyFeedsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyFeeds &&
        id == other.id &&
        feedId == other.feedId &&
        title == other.title &&
        updated == other.updated &&
        velocity == other.velocity &&
        topics == other.topics &&
        subscribers == other.subscribers &&
        website == other.website &&
        estimatedEngagement == other.estimatedEngagement &&
        partial == other.partial &&
        coverUrl == other.coverUrl &&
        iconUrl == other.iconUrl &&
        visualUrl == other.visualUrl &&
        language == other.language &&
        contentType == other.contentType &&
        description == other.description &&
        coverColor == other.coverColor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(0,
                                                                        id.hashCode),
                                                                    feedId.hashCode),
                                                                title.hashCode),
                                                            updated.hashCode),
                                                        velocity.hashCode),
                                                    topics.hashCode),
                                                subscribers.hashCode),
                                            website.hashCode),
                                        estimatedEngagement.hashCode),
                                    partial.hashCode),
                                coverUrl.hashCode),
                            iconUrl.hashCode),
                        visualUrl.hashCode),
                    language.hashCode),
                contentType.hashCode),
            description.hashCode),
        coverColor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyFeeds')
          ..add('id', id)
          ..add('feedId', feedId)
          ..add('title', title)
          ..add('updated', updated)
          ..add('velocity', velocity)
          ..add('topics', topics)
          ..add('subscribers', subscribers)
          ..add('website', website)
          ..add('estimatedEngagement', estimatedEngagement)
          ..add('partial', partial)
          ..add('coverUrl', coverUrl)
          ..add('iconUrl', iconUrl)
          ..add('visualUrl', visualUrl)
          ..add('language', language)
          ..add('contentType', contentType)
          ..add('description', description)
          ..add('coverColor', coverColor))
        .toString();
  }
}

class FeedlyFeedsBuilder implements Builder<FeedlyFeeds, FeedlyFeedsBuilder> {
  _$FeedlyFeeds _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _feedId;
  String get feedId => _$this._feedId;
  set feedId(String feedId) => _$this._feedId = feedId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _updated;
  int get updated => _$this._updated;
  set updated(int updated) => _$this._updated = updated;

  double _velocity;
  double get velocity => _$this._velocity;
  set velocity(double velocity) => _$this._velocity = velocity;

  ListBuilder<String> _topics;
  ListBuilder<String> get topics =>
      _$this._topics ??= new ListBuilder<String>();
  set topics(ListBuilder<String> topics) => _$this._topics = topics;

  int _subscribers;
  int get subscribers => _$this._subscribers;
  set subscribers(int subscribers) => _$this._subscribers = subscribers;

  String _website;
  String get website => _$this._website;
  set website(String website) => _$this._website = website;

  int _estimatedEngagement;
  int get estimatedEngagement => _$this._estimatedEngagement;
  set estimatedEngagement(int estimatedEngagement) =>
      _$this._estimatedEngagement = estimatedEngagement;

  bool _partial;
  bool get partial => _$this._partial;
  set partial(bool partial) => _$this._partial = partial;

  String _coverUrl;
  String get coverUrl => _$this._coverUrl;
  set coverUrl(String coverUrl) => _$this._coverUrl = coverUrl;

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

  String _visualUrl;
  String get visualUrl => _$this._visualUrl;
  set visualUrl(String visualUrl) => _$this._visualUrl = visualUrl;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _coverColor;
  String get coverColor => _$this._coverColor;
  set coverColor(String coverColor) => _$this._coverColor = coverColor;

  FeedlyFeedsBuilder();

  FeedlyFeedsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _feedId = _$v.feedId;
      _title = _$v.title;
      _updated = _$v.updated;
      _velocity = _$v.velocity;
      _topics = _$v.topics?.toBuilder();
      _subscribers = _$v.subscribers;
      _website = _$v.website;
      _estimatedEngagement = _$v.estimatedEngagement;
      _partial = _$v.partial;
      _coverUrl = _$v.coverUrl;
      _iconUrl = _$v.iconUrl;
      _visualUrl = _$v.visualUrl;
      _language = _$v.language;
      _contentType = _$v.contentType;
      _description = _$v.description;
      _coverColor = _$v.coverColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyFeeds other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyFeeds;
  }

  @override
  void update(void Function(FeedlyFeedsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyFeeds build() {
    _$FeedlyFeeds _$result;
    try {
      _$result = _$v ??
          new _$FeedlyFeeds._(
              id: id,
              feedId: feedId,
              title: title,
              updated: updated,
              velocity: velocity,
              topics: topics.build(),
              subscribers: subscribers,
              website: website,
              estimatedEngagement: estimatedEngagement,
              partial: partial,
              coverUrl: coverUrl,
              iconUrl: iconUrl,
              visualUrl: visualUrl,
              language: language,
              contentType: contentType,
              description: description,
              coverColor: coverColor);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'topics';
        topics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyFeeds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
