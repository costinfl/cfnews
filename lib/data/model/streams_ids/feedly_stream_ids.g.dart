// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_stream_ids;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyStreamIds> _$feedlyStreamIdsSerializer =
    new _$FeedlyStreamIdsSerializer();

class _$FeedlyStreamIdsSerializer
    implements StructuredSerializer<FeedlyStreamIds> {
  @override
  final Iterable<Type> types = const [FeedlyStreamIds, _$FeedlyStreamIds];
  @override
  final String wireName = 'FeedlyStreamIds';

  @override
  Iterable serialize(Serializers serializers, FeedlyStreamIds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'ids',
      serializers.serialize(object.streamIds,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];
    if (object.continuationToken != null) {
      result
        ..add('continuation')
        ..add(serializers.serialize(object.continuationToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FeedlyStreamIds deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyStreamIdsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ids':
          result.streamIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'continuation':
          result.continuationToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyStreamIds extends FeedlyStreamIds {
  @override
  final BuiltList<String> streamIds;
  @override
  final String continuationToken;

  factory _$FeedlyStreamIds([void Function(FeedlyStreamIdsBuilder) updates]) =>
      (new FeedlyStreamIdsBuilder()..update(updates)).build();

  _$FeedlyStreamIds._({this.streamIds, this.continuationToken}) : super._() {
    if (streamIds == null) {
      throw new BuiltValueNullFieldError('FeedlyStreamIds', 'streamIds');
    }
  }

  @override
  FeedlyStreamIds rebuild(void Function(FeedlyStreamIdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyStreamIdsBuilder toBuilder() =>
      new FeedlyStreamIdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyStreamIds &&
        streamIds == other.streamIds &&
        continuationToken == other.continuationToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, streamIds.hashCode), continuationToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyStreamIds')
          ..add('streamIds', streamIds)
          ..add('continuationToken', continuationToken))
        .toString();
  }
}

class FeedlyStreamIdsBuilder
    implements Builder<FeedlyStreamIds, FeedlyStreamIdsBuilder> {
  _$FeedlyStreamIds _$v;

  ListBuilder<String> _streamIds;
  ListBuilder<String> get streamIds =>
      _$this._streamIds ??= new ListBuilder<String>();
  set streamIds(ListBuilder<String> streamIds) => _$this._streamIds = streamIds;

  String _continuationToken;
  String get continuationToken => _$this._continuationToken;
  set continuationToken(String continuationToken) =>
      _$this._continuationToken = continuationToken;

  FeedlyStreamIdsBuilder();

  FeedlyStreamIdsBuilder get _$this {
    if (_$v != null) {
      _streamIds = _$v.streamIds?.toBuilder();
      _continuationToken = _$v.continuationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyStreamIds other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyStreamIds;
  }

  @override
  void update(void Function(FeedlyStreamIdsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyStreamIds build() {
    _$FeedlyStreamIds _$result;
    try {
      _$result = _$v ??
          new _$FeedlyStreamIds._(
              streamIds: streamIds.build(),
              continuationToken: continuationToken);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'streamIds';
        streamIds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyStreamIds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
