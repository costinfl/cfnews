// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_collections_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyCollectionsResult> _$feedlyCollectionsResultSerializer =
    new _$FeedlyCollectionsResultSerializer();

class _$FeedlyCollectionsResultSerializer
    implements StructuredSerializer<FeedlyCollectionsResult> {
  @override
  final Iterable<Type> types = const [
    FeedlyCollectionsResult,
    _$FeedlyCollectionsResult
  ];
  @override
  final String wireName = 'FeedlyCollectionsResult';

  @override
  Iterable serialize(Serializers serializers, FeedlyCollectionsResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'collections',
      serializers.serialize(object.collections,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FeedlyCollection)])),
    ];

    return result;
  }

  @override
  FeedlyCollectionsResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyCollectionsResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'collections':
          result.collections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeedlyCollection)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyCollectionsResult extends FeedlyCollectionsResult {
  @override
  final BuiltList<FeedlyCollection> collections;

  factory _$FeedlyCollectionsResult(
          [void Function(FeedlyCollectionsResultBuilder) updates]) =>
      (new FeedlyCollectionsResultBuilder()..update(updates)).build();

  _$FeedlyCollectionsResult._({this.collections}) : super._() {
    if (collections == null) {
      throw new BuiltValueNullFieldError(
          'FeedlyCollectionsResult', 'collections');
    }
  }

  @override
  FeedlyCollectionsResult rebuild(
          void Function(FeedlyCollectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyCollectionsResultBuilder toBuilder() =>
      new FeedlyCollectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyCollectionsResult && collections == other.collections;
  }

  @override
  int get hashCode {
    return $jf($jc(0, collections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyCollectionsResult')
          ..add('collections', collections))
        .toString();
  }
}

class FeedlyCollectionsResultBuilder
    implements
        Builder<FeedlyCollectionsResult, FeedlyCollectionsResultBuilder> {
  _$FeedlyCollectionsResult _$v;

  ListBuilder<FeedlyCollection> _collections;
  ListBuilder<FeedlyCollection> get collections =>
      _$this._collections ??= new ListBuilder<FeedlyCollection>();
  set collections(ListBuilder<FeedlyCollection> collections) =>
      _$this._collections = collections;

  FeedlyCollectionsResultBuilder();

  FeedlyCollectionsResultBuilder get _$this {
    if (_$v != null) {
      _collections = _$v.collections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyCollectionsResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyCollectionsResult;
  }

  @override
  void update(void Function(FeedlyCollectionsResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyCollectionsResult build() {
    _$FeedlyCollectionsResult _$result;
    try {
      _$result = _$v ??
          new _$FeedlyCollectionsResult._(collections: collections.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'collections';
        collections.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyCollectionsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
