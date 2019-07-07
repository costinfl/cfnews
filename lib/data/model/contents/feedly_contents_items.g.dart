// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_contents_items;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyContentsItems> _$feedlyContentsItemsSerializer =
    new _$FeedlyContentsItemsSerializer();

class _$FeedlyContentsItemsSerializer
    implements StructuredSerializer<FeedlyContentsItems> {
  @override
  final Iterable<Type> types = const [
    FeedlyContentsItems,
    _$FeedlyContentsItems
  ];
  @override
  final String wireName = 'FeedlyContentsItems';

  @override
  Iterable serialize(Serializers serializers, FeedlyContentsItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.keywords != null) {
      result
        ..add('keywords')
        ..add(serializers.serialize(object.keywords,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.originId != null) {
      result
        ..add('originId')
        ..add(serializers.serialize(object.originId,
            specifiedType: const FullType(String)));
    }
    if (object.fingerprint != null) {
      result
        ..add('fingerprint')
        ..add(serializers.serialize(object.fingerprint,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(Content)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.author != null) {
      result
        ..add('author')
        ..add(serializers.serialize(object.author,
            specifiedType: const FullType(String)));
    }
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(Summary)));
    }
    if (object.alternate != null) {
      result
        ..add('alternate')
        ..add(serializers.serialize(object.alternate,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Alternate)])));
    }
    if (object.crawled != null) {
      result
        ..add('crawled')
        ..add(serializers.serialize(object.crawled,
            specifiedType: const FullType(int)));
    }
    if (object.published != null) {
      result
        ..add('published')
        ..add(serializers.serialize(object.published,
            specifiedType: const FullType(int)));
    }
    if (object.origin != null) {
      result
        ..add('origin')
        ..add(serializers.serialize(object.origin,
            specifiedType: const FullType(Origin)));
    }
    if (object.visual != null) {
      result
        ..add('visual')
        ..add(serializers.serialize(object.visual,
            specifiedType: const FullType(Visual)));
    }
    if (object.canonicalUrl != null) {
      result
        ..add('canonicalUrl')
        ..add(serializers.serialize(object.canonicalUrl,
            specifiedType: const FullType(String)));
    }
    if (object.ampUrl != null) {
      result
        ..add('ampUrl')
        ..add(serializers.serialize(object.ampUrl,
            specifiedType: const FullType(String)));
    }
    if (object.cdnAmpUrl != null) {
      result
        ..add('cdnAmpUrl')
        ..add(serializers.serialize(object.cdnAmpUrl,
            specifiedType: const FullType(String)));
    }
    if (object.unread != null) {
      result
        ..add('unread')
        ..add(serializers.serialize(object.unread,
            specifiedType: const FullType(bool)));
    }
    if (object.categories != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(object.categories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Categories)])));
    }
    if (object.commonTopics != null) {
      result
        ..add('commonTopics')
        ..add(serializers.serialize(object.commonTopics,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CommonTopics)])));
    }
    if (object.entities != null) {
      result
        ..add('entities')
        ..add(serializers.serialize(object.entities,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Entities)])));
    }
    if (object.enclosure != null) {
      result
        ..add('enclosure')
        ..add(serializers.serialize(object.enclosure,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Enclosure)])));
    }
    if (object.engagement != null) {
      result
        ..add('engagement')
        ..add(serializers.serialize(object.engagement,
            specifiedType: const FullType(int)));
    }
    if (object.engagementRate != null) {
      result
        ..add('engagementRate')
        ..add(serializers.serialize(object.engagementRate,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  FeedlyContentsItems deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyContentsItemsBuilder();

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
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'originId':
          result.originId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fingerprint':
          result.fingerprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content.replace(serializers.deserialize(value,
              specifiedType: const FullType(Content)) as Content);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'summary':
          result.summary.replace(serializers.deserialize(value,
              specifiedType: const FullType(Summary)) as Summary);
          break;
        case 'alternate':
          result.alternate.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Alternate)])) as BuiltList);
          break;
        case 'crawled':
          result.crawled = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'origin':
          result.origin.replace(serializers.deserialize(value,
              specifiedType: const FullType(Origin)) as Origin);
          break;
        case 'visual':
          result.visual.replace(serializers.deserialize(value,
              specifiedType: const FullType(Visual)) as Visual);
          break;
        case 'canonicalUrl':
          result.canonicalUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ampUrl':
          result.ampUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cdnAmpUrl':
          result.cdnAmpUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unread':
          result.unread = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Categories)])) as BuiltList);
          break;
        case 'commonTopics':
          result.commonTopics.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CommonTopics)]))
              as BuiltList);
          break;
        case 'entities':
          result.entities.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Entities)])) as BuiltList);
          break;
        case 'enclosure':
          result.enclosure.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Enclosure)])) as BuiltList);
          break;
        case 'engagement':
          result.engagement = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'engagementRate':
          result.engagementRate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyContentsItems extends FeedlyContentsItems {
  @override
  final String id;
  @override
  final BuiltList<String> keywords;
  @override
  final String originId;
  @override
  final String fingerprint;
  @override
  final Content content;
  @override
  final String title;
  @override
  final String author;
  @override
  final Summary summary;
  @override
  final BuiltList<Alternate> alternate;
  @override
  final int crawled;
  @override
  final int published;
  @override
  final Origin origin;
  @override
  final Visual visual;
  @override
  final String canonicalUrl;
  @override
  final String ampUrl;
  @override
  final String cdnAmpUrl;
  @override
  final bool unread;
  @override
  final BuiltList<Categories> categories;
  @override
  final BuiltList<CommonTopics> commonTopics;
  @override
  final BuiltList<Entities> entities;
  @override
  final BuiltList<Enclosure> enclosure;
  @override
  final int engagement;
  @override
  final double engagementRate;

  factory _$FeedlyContentsItems(
          [void Function(FeedlyContentsItemsBuilder) updates]) =>
      (new FeedlyContentsItemsBuilder()..update(updates)).build();

  _$FeedlyContentsItems._(
      {this.id,
      this.keywords,
      this.originId,
      this.fingerprint,
      this.content,
      this.title,
      this.author,
      this.summary,
      this.alternate,
      this.crawled,
      this.published,
      this.origin,
      this.visual,
      this.canonicalUrl,
      this.ampUrl,
      this.cdnAmpUrl,
      this.unread,
      this.categories,
      this.commonTopics,
      this.entities,
      this.enclosure,
      this.engagement,
      this.engagementRate})
      : super._();

  @override
  FeedlyContentsItems rebuild(
          void Function(FeedlyContentsItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyContentsItemsBuilder toBuilder() =>
      new FeedlyContentsItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyContentsItems &&
        id == other.id &&
        keywords == other.keywords &&
        originId == other.originId &&
        fingerprint == other.fingerprint &&
        content == other.content &&
        title == other.title &&
        author == other.author &&
        summary == other.summary &&
        alternate == other.alternate &&
        crawled == other.crawled &&
        published == other.published &&
        origin == other.origin &&
        visual == other.visual &&
        canonicalUrl == other.canonicalUrl &&
        ampUrl == other.ampUrl &&
        cdnAmpUrl == other.cdnAmpUrl &&
        unread == other.unread &&
        categories == other.categories &&
        commonTopics == other.commonTopics &&
        entities == other.entities &&
        enclosure == other.enclosure &&
        engagement == other.engagement &&
        engagementRate == other.engagementRate;
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
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, id.hashCode), keywords.hashCode), originId.hashCode), fingerprint.hashCode),
                                                                                content.hashCode),
                                                                            title.hashCode),
                                                                        author.hashCode),
                                                                    summary.hashCode),
                                                                alternate.hashCode),
                                                            crawled.hashCode),
                                                        published.hashCode),
                                                    origin.hashCode),
                                                visual.hashCode),
                                            canonicalUrl.hashCode),
                                        ampUrl.hashCode),
                                    cdnAmpUrl.hashCode),
                                unread.hashCode),
                            categories.hashCode),
                        commonTopics.hashCode),
                    entities.hashCode),
                enclosure.hashCode),
            engagement.hashCode),
        engagementRate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyContentsItems')
          ..add('id', id)
          ..add('keywords', keywords)
          ..add('originId', originId)
          ..add('fingerprint', fingerprint)
          ..add('content', content)
          ..add('title', title)
          ..add('author', author)
          ..add('summary', summary)
          ..add('alternate', alternate)
          ..add('crawled', crawled)
          ..add('published', published)
          ..add('origin', origin)
          ..add('visual', visual)
          ..add('canonicalUrl', canonicalUrl)
          ..add('ampUrl', ampUrl)
          ..add('cdnAmpUrl', cdnAmpUrl)
          ..add('unread', unread)
          ..add('categories', categories)
          ..add('commonTopics', commonTopics)
          ..add('entities', entities)
          ..add('enclosure', enclosure)
          ..add('engagement', engagement)
          ..add('engagementRate', engagementRate))
        .toString();
  }
}

class FeedlyContentsItemsBuilder
    implements Builder<FeedlyContentsItems, FeedlyContentsItemsBuilder> {
  _$FeedlyContentsItems _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ListBuilder<String> _keywords;
  ListBuilder<String> get keywords =>
      _$this._keywords ??= new ListBuilder<String>();
  set keywords(ListBuilder<String> keywords) => _$this._keywords = keywords;

  String _originId;
  String get originId => _$this._originId;
  set originId(String originId) => _$this._originId = originId;

  String _fingerprint;
  String get fingerprint => _$this._fingerprint;
  set fingerprint(String fingerprint) => _$this._fingerprint = fingerprint;

  ContentBuilder _content;
  ContentBuilder get content => _$this._content ??= new ContentBuilder();
  set content(ContentBuilder content) => _$this._content = content;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  SummaryBuilder _summary;
  SummaryBuilder get summary => _$this._summary ??= new SummaryBuilder();
  set summary(SummaryBuilder summary) => _$this._summary = summary;

  ListBuilder<Alternate> _alternate;
  ListBuilder<Alternate> get alternate =>
      _$this._alternate ??= new ListBuilder<Alternate>();
  set alternate(ListBuilder<Alternate> alternate) =>
      _$this._alternate = alternate;

  int _crawled;
  int get crawled => _$this._crawled;
  set crawled(int crawled) => _$this._crawled = crawled;

  int _published;
  int get published => _$this._published;
  set published(int published) => _$this._published = published;

  OriginBuilder _origin;
  OriginBuilder get origin => _$this._origin ??= new OriginBuilder();
  set origin(OriginBuilder origin) => _$this._origin = origin;

  VisualBuilder _visual;
  VisualBuilder get visual => _$this._visual ??= new VisualBuilder();
  set visual(VisualBuilder visual) => _$this._visual = visual;

  String _canonicalUrl;
  String get canonicalUrl => _$this._canonicalUrl;
  set canonicalUrl(String canonicalUrl) => _$this._canonicalUrl = canonicalUrl;

  String _ampUrl;
  String get ampUrl => _$this._ampUrl;
  set ampUrl(String ampUrl) => _$this._ampUrl = ampUrl;

  String _cdnAmpUrl;
  String get cdnAmpUrl => _$this._cdnAmpUrl;
  set cdnAmpUrl(String cdnAmpUrl) => _$this._cdnAmpUrl = cdnAmpUrl;

  bool _unread;
  bool get unread => _$this._unread;
  set unread(bool unread) => _$this._unread = unread;

  ListBuilder<Categories> _categories;
  ListBuilder<Categories> get categories =>
      _$this._categories ??= new ListBuilder<Categories>();
  set categories(ListBuilder<Categories> categories) =>
      _$this._categories = categories;

  ListBuilder<CommonTopics> _commonTopics;
  ListBuilder<CommonTopics> get commonTopics =>
      _$this._commonTopics ??= new ListBuilder<CommonTopics>();
  set commonTopics(ListBuilder<CommonTopics> commonTopics) =>
      _$this._commonTopics = commonTopics;

  ListBuilder<Entities> _entities;
  ListBuilder<Entities> get entities =>
      _$this._entities ??= new ListBuilder<Entities>();
  set entities(ListBuilder<Entities> entities) => _$this._entities = entities;

  ListBuilder<Enclosure> _enclosure;
  ListBuilder<Enclosure> get enclosure =>
      _$this._enclosure ??= new ListBuilder<Enclosure>();
  set enclosure(ListBuilder<Enclosure> enclosure) =>
      _$this._enclosure = enclosure;

  int _engagement;
  int get engagement => _$this._engagement;
  set engagement(int engagement) => _$this._engagement = engagement;

  double _engagementRate;
  double get engagementRate => _$this._engagementRate;
  set engagementRate(double engagementRate) =>
      _$this._engagementRate = engagementRate;

  FeedlyContentsItemsBuilder();

  FeedlyContentsItemsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _keywords = _$v.keywords?.toBuilder();
      _originId = _$v.originId;
      _fingerprint = _$v.fingerprint;
      _content = _$v.content?.toBuilder();
      _title = _$v.title;
      _author = _$v.author;
      _summary = _$v.summary?.toBuilder();
      _alternate = _$v.alternate?.toBuilder();
      _crawled = _$v.crawled;
      _published = _$v.published;
      _origin = _$v.origin?.toBuilder();
      _visual = _$v.visual?.toBuilder();
      _canonicalUrl = _$v.canonicalUrl;
      _ampUrl = _$v.ampUrl;
      _cdnAmpUrl = _$v.cdnAmpUrl;
      _unread = _$v.unread;
      _categories = _$v.categories?.toBuilder();
      _commonTopics = _$v.commonTopics?.toBuilder();
      _entities = _$v.entities?.toBuilder();
      _enclosure = _$v.enclosure?.toBuilder();
      _engagement = _$v.engagement;
      _engagementRate = _$v.engagementRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyContentsItems other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyContentsItems;
  }

  @override
  void update(void Function(FeedlyContentsItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyContentsItems build() {
    _$FeedlyContentsItems _$result;
    try {
      _$result = _$v ??
          new _$FeedlyContentsItems._(
              id: id,
              keywords: _keywords?.build(),
              originId: originId,
              fingerprint: fingerprint,
              content: _content?.build(),
              title: title,
              author: author,
              summary: _summary?.build(),
              alternate: _alternate?.build(),
              crawled: crawled,
              published: published,
              origin: _origin?.build(),
              visual: _visual?.build(),
              canonicalUrl: canonicalUrl,
              ampUrl: ampUrl,
              cdnAmpUrl: cdnAmpUrl,
              unread: unread,
              categories: _categories?.build(),
              commonTopics: _commonTopics?.build(),
              entities: _entities?.build(),
              enclosure: _enclosure?.build(),
              engagement: engagement,
              engagementRate: engagementRate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'keywords';
        _keywords?.build();

        _$failedField = 'content';
        _content?.build();

        _$failedField = 'summary';
        _summary?.build();
        _$failedField = 'alternate';
        _alternate?.build();

        _$failedField = 'origin';
        _origin?.build();
        _$failedField = 'visual';
        _visual?.build();

        _$failedField = 'categories';
        _categories?.build();
        _$failedField = 'commonTopics';
        _commonTopics?.build();
        _$failedField = 'entities';
        _entities?.build();
        _$failedField = 'enclosure';
        _enclosure?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyContentsItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
