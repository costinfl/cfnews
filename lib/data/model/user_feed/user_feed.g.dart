// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_feed;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserFeed> _$userFeedSerializer = new _$UserFeedSerializer();

class _$UserFeedSerializer implements StructuredSerializer<UserFeed> {
  @override
  final Iterable<Type> types = const [UserFeed, _$UserFeed];
  @override
  final String wireName = 'UserFeed';

  @override
  Iterable serialize(Serializers serializers, UserFeed object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.feedlyId != null) {
      result
        ..add('feedlyId')
        ..add(serializers.serialize(object.feedlyId,
            specifiedType: const FullType(String)));
    }
    if (object.feedUrl != null) {
      result
        ..add('feedUrl')
        ..add(serializers.serialize(object.feedUrl,
            specifiedType: const FullType(String)));
    }
    if (object.feedIconUrl != null) {
      result
        ..add('feedIconUrl')
        ..add(serializers.serialize(object.feedIconUrl,
            specifiedType: const FullType(String)));
    }
    if (object.feedLabel != null) {
      result
        ..add('feedLabel')
        ..add(serializers.serialize(object.feedLabel,
            specifiedType: const FullType(String)));
    }
    if (object.subscribed != null) {
      result
        ..add('subscribed')
        ..add(serializers.serialize(object.subscribed,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  UserFeed deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserFeedBuilder();

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
        case 'feedlyId':
          result.feedlyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feedUrl':
          result.feedUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feedIconUrl':
          result.feedIconUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feedLabel':
          result.feedLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subscribed':
          result.subscribed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$UserFeed extends UserFeed {
  @override
  final String id;
  @override
  final String feedlyId;
  @override
  final String feedUrl;
  @override
  final String feedIconUrl;
  @override
  final String feedLabel;
  @override
  final bool subscribed;

  factory _$UserFeed([void Function(UserFeedBuilder) updates]) =>
      (new UserFeedBuilder()..update(updates)).build();

  _$UserFeed._(
      {this.id,
      this.feedlyId,
      this.feedUrl,
      this.feedIconUrl,
      this.feedLabel,
      this.subscribed})
      : super._();

  @override
  UserFeed rebuild(void Function(UserFeedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserFeedBuilder toBuilder() => new UserFeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserFeed &&
        id == other.id &&
        feedlyId == other.feedlyId &&
        feedUrl == other.feedUrl &&
        feedIconUrl == other.feedIconUrl &&
        feedLabel == other.feedLabel &&
        subscribed == other.subscribed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), feedlyId.hashCode),
                    feedUrl.hashCode),
                feedIconUrl.hashCode),
            feedLabel.hashCode),
        subscribed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserFeed')
          ..add('id', id)
          ..add('feedlyId', feedlyId)
          ..add('feedUrl', feedUrl)
          ..add('feedIconUrl', feedIconUrl)
          ..add('feedLabel', feedLabel)
          ..add('subscribed', subscribed))
        .toString();
  }
}

class UserFeedBuilder implements Builder<UserFeed, UserFeedBuilder> {
  _$UserFeed _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _feedlyId;
  String get feedlyId => _$this._feedlyId;
  set feedlyId(String feedlyId) => _$this._feedlyId = feedlyId;

  String _feedUrl;
  String get feedUrl => _$this._feedUrl;
  set feedUrl(String feedUrl) => _$this._feedUrl = feedUrl;

  String _feedIconUrl;
  String get feedIconUrl => _$this._feedIconUrl;
  set feedIconUrl(String feedIconUrl) => _$this._feedIconUrl = feedIconUrl;

  String _feedLabel;
  String get feedLabel => _$this._feedLabel;
  set feedLabel(String feedLabel) => _$this._feedLabel = feedLabel;

  bool _subscribed;
  bool get subscribed => _$this._subscribed;
  set subscribed(bool subscribed) => _$this._subscribed = subscribed;

  UserFeedBuilder();

  UserFeedBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _feedlyId = _$v.feedlyId;
      _feedUrl = _$v.feedUrl;
      _feedIconUrl = _$v.feedIconUrl;
      _feedLabel = _$v.feedLabel;
      _subscribed = _$v.subscribed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserFeed other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserFeed;
  }

  @override
  void update(void Function(UserFeedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserFeed build() {
    final _$result = _$v ??
        new _$UserFeed._(
            id: id,
            feedlyId: feedlyId,
            feedUrl: feedUrl,
            feedIconUrl: feedIconUrl,
            feedLabel: feedLabel,
            subscribed: subscribed);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
