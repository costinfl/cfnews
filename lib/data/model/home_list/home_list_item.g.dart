// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_list_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeListItem> _$homeListItemSerializer =
    new _$HomeListItemSerializer();

class _$HomeListItemSerializer implements StructuredSerializer<HomeListItem> {
  @override
  final Iterable<Type> types = const [HomeListItem, _$HomeListItem];
  @override
  final String wireName = 'HomeListItem';

  @override
  Iterable serialize(Serializers serializers, HomeListItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.publishDate != null) {
      result
        ..add('publishDate')
        ..add(serializers.serialize(object.publishDate,
            specifiedType: const FullType(String)));
    }
    if (object.coverUrl != null) {
      result
        ..add('coverUrl')
        ..add(serializers.serialize(object.coverUrl,
            specifiedType: const FullType(String)));
    }
    if (object.updated != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(object.updated,
            specifiedType: const FullType(int)));
    }
    if (object.articleUrl != null) {
      result
        ..add('articleUrl')
        ..add(serializers.serialize(object.articleUrl,
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
    if (object.coverColor != null) {
      result
        ..add('coverColor')
        ..add(serializers.serialize(object.coverColor,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HomeListItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'publishDate':
          result.publishDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coverUrl':
          result.coverUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'articleUrl':
          result.articleUrl = serializers.deserialize(value,
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
        case 'coverColor':
          result.coverColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HomeListItem extends HomeListItem {
  @override
  final String title;
  @override
  final String publishDate;
  @override
  final String coverUrl;
  @override
  final int updated;
  @override
  final String articleUrl;
  @override
  final String iconUrl;
  @override
  final String visualUrl;
  @override
  final String coverColor;
  @override
  final String content;

  factory _$HomeListItem([void Function(HomeListItemBuilder) updates]) =>
      (new HomeListItemBuilder()..update(updates)).build();

  _$HomeListItem._(
      {this.title,
      this.publishDate,
      this.coverUrl,
      this.updated,
      this.articleUrl,
      this.iconUrl,
      this.visualUrl,
      this.coverColor,
      this.content})
      : super._();

  @override
  HomeListItem rebuild(void Function(HomeListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeListItemBuilder toBuilder() => new HomeListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeListItem &&
        title == other.title &&
        publishDate == other.publishDate &&
        coverUrl == other.coverUrl &&
        updated == other.updated &&
        articleUrl == other.articleUrl &&
        iconUrl == other.iconUrl &&
        visualUrl == other.visualUrl &&
        coverColor == other.coverColor &&
        content == other.content;
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
                                $jc($jc(0, title.hashCode),
                                    publishDate.hashCode),
                                coverUrl.hashCode),
                            updated.hashCode),
                        articleUrl.hashCode),
                    iconUrl.hashCode),
                visualUrl.hashCode),
            coverColor.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeListItem')
          ..add('title', title)
          ..add('publishDate', publishDate)
          ..add('coverUrl', coverUrl)
          ..add('updated', updated)
          ..add('articleUrl', articleUrl)
          ..add('iconUrl', iconUrl)
          ..add('visualUrl', visualUrl)
          ..add('coverColor', coverColor)
          ..add('content', content))
        .toString();
  }
}

class HomeListItemBuilder
    implements Builder<HomeListItem, HomeListItemBuilder> {
  _$HomeListItem _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _publishDate;
  String get publishDate => _$this._publishDate;
  set publishDate(String publishDate) => _$this._publishDate = publishDate;

  String _coverUrl;
  String get coverUrl => _$this._coverUrl;
  set coverUrl(String coverUrl) => _$this._coverUrl = coverUrl;

  int _updated;
  int get updated => _$this._updated;
  set updated(int updated) => _$this._updated = updated;

  String _articleUrl;
  String get articleUrl => _$this._articleUrl;
  set articleUrl(String articleUrl) => _$this._articleUrl = articleUrl;

  String _iconUrl;
  String get iconUrl => _$this._iconUrl;
  set iconUrl(String iconUrl) => _$this._iconUrl = iconUrl;

  String _visualUrl;
  String get visualUrl => _$this._visualUrl;
  set visualUrl(String visualUrl) => _$this._visualUrl = visualUrl;

  String _coverColor;
  String get coverColor => _$this._coverColor;
  set coverColor(String coverColor) => _$this._coverColor = coverColor;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  HomeListItemBuilder();

  HomeListItemBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _publishDate = _$v.publishDate;
      _coverUrl = _$v.coverUrl;
      _updated = _$v.updated;
      _articleUrl = _$v.articleUrl;
      _iconUrl = _$v.iconUrl;
      _visualUrl = _$v.visualUrl;
      _coverColor = _$v.coverColor;
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeListItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeListItem;
  }

  @override
  void update(void Function(HomeListItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeListItem build() {
    final _$result = _$v ??
        new _$HomeListItem._(
            title: title,
            publishDate: publishDate,
            coverUrl: coverUrl,
            updated: updated,
            articleUrl: articleUrl,
            iconUrl: iconUrl,
            visualUrl: visualUrl,
            coverColor: coverColor,
            content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
