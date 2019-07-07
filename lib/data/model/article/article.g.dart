// GENERATED CODE - DO NOT MODIFY BY HAND

part of article;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Article> _$articleSerializer = new _$ArticleSerializer();

class _$ArticleSerializer implements StructuredSerializer<Article> {
  @override
  final Iterable<Type> types = const [Article, _$Article];
  @override
  final String wireName = 'Article';

  @override
  Iterable serialize(Serializers serializers, Article object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.logoUrl != null) {
      result
        ..add('logoUrl')
        ..add(serializers.serialize(object.logoUrl,
            specifiedType: const FullType(String)));
    }
    if (object.imageUrl != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.published != null) {
      result
        ..add('published')
        ..add(serializers.serialize(object.published,
            specifiedType: const FullType(String)));
    }
    if (object.dateSaved != null) {
      result
        ..add('dateSaved')
        ..add(serializers.serialize(object.dateSaved,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Article deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'logoUrl':
          result.logoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateSaved':
          result.dateSaved = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Article extends Article {
  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String logoUrl;
  @override
  final String imageUrl;
  @override
  final String url;
  @override
  final String published;
  @override
  final String dateSaved;

  factory _$Article([void Function(ArticleBuilder) updates]) =>
      (new ArticleBuilder()..update(updates)).build();

  _$Article._(
      {this.id,
      this.title,
      this.content,
      this.logoUrl,
      this.imageUrl,
      this.url,
      this.published,
      this.dateSaved})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Article', 'id');
    }
  }

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        id == other.id &&
        title == other.title &&
        content == other.content &&
        logoUrl == other.logoUrl &&
        imageUrl == other.imageUrl &&
        url == other.url &&
        published == other.published &&
        dateSaved == other.dateSaved;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), title.hashCode),
                            content.hashCode),
                        logoUrl.hashCode),
                    imageUrl.hashCode),
                url.hashCode),
            published.hashCode),
        dateSaved.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Article')
          ..add('id', id)
          ..add('title', title)
          ..add('content', content)
          ..add('logoUrl', logoUrl)
          ..add('imageUrl', imageUrl)
          ..add('url', url)
          ..add('published', published)
          ..add('dateSaved', dateSaved))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _logoUrl;
  String get logoUrl => _$this._logoUrl;
  set logoUrl(String logoUrl) => _$this._logoUrl = logoUrl;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _published;
  String get published => _$this._published;
  set published(String published) => _$this._published = published;

  String _dateSaved;
  String get dateSaved => _$this._dateSaved;
  set dateSaved(String dateSaved) => _$this._dateSaved = dateSaved;

  ArticleBuilder();

  ArticleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _content = _$v.content;
      _logoUrl = _$v.logoUrl;
      _imageUrl = _$v.imageUrl;
      _url = _$v.url;
      _published = _$v.published;
      _dateSaved = _$v.dateSaved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Article build() {
    final _$result = _$v ??
        new _$Article._(
            id: id,
            title: title,
            content: content,
            logoUrl: logoUrl,
            imageUrl: imageUrl,
            url: url,
            published: published,
            dateSaved: dateSaved);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
