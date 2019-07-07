// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_entries_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyEntriesResult> _$feedlyEntriesResultSerializer =
    new _$FeedlyEntriesResultSerializer();

class _$FeedlyEntriesResultSerializer
    implements StructuredSerializer<FeedlyEntriesResult> {
  @override
  final Iterable<Type> types = const [
    FeedlyEntriesResult,
    _$FeedlyEntriesResult
  ];
  @override
  final String wireName = 'FeedlyEntriesResult';

  @override
  Iterable serialize(Serializers serializers, FeedlyEntriesResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'entries',
      serializers.serialize(object.entries,
          specifiedType:
              const FullType(BuiltList, const [const FullType(FeedlyEntry)])),
    ];

    return result;
  }

  @override
  FeedlyEntriesResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyEntriesResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'entries':
          result.entries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeedlyEntry)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyEntriesResult extends FeedlyEntriesResult {
  @override
  final BuiltList<FeedlyEntry> entries;

  factory _$FeedlyEntriesResult(
          [void Function(FeedlyEntriesResultBuilder) updates]) =>
      (new FeedlyEntriesResultBuilder()..update(updates)).build();

  _$FeedlyEntriesResult._({this.entries}) : super._() {
    if (entries == null) {
      throw new BuiltValueNullFieldError('FeedlyEntriesResult', 'entries');
    }
  }

  @override
  FeedlyEntriesResult rebuild(
          void Function(FeedlyEntriesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyEntriesResultBuilder toBuilder() =>
      new FeedlyEntriesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyEntriesResult && entries == other.entries;
  }

  @override
  int get hashCode {
    return $jf($jc(0, entries.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyEntriesResult')
          ..add('entries', entries))
        .toString();
  }
}

class FeedlyEntriesResultBuilder
    implements Builder<FeedlyEntriesResult, FeedlyEntriesResultBuilder> {
  _$FeedlyEntriesResult _$v;

  ListBuilder<FeedlyEntry> _entries;
  ListBuilder<FeedlyEntry> get entries =>
      _$this._entries ??= new ListBuilder<FeedlyEntry>();
  set entries(ListBuilder<FeedlyEntry> entries) => _$this._entries = entries;

  FeedlyEntriesResultBuilder();

  FeedlyEntriesResultBuilder get _$this {
    if (_$v != null) {
      _entries = _$v.entries?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyEntriesResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyEntriesResult;
  }

  @override
  void update(void Function(FeedlyEntriesResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyEntriesResult build() {
    _$FeedlyEntriesResult _$result;
    try {
      _$result = _$v ?? new _$FeedlyEntriesResult._(entries: entries.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'entries';
        entries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyEntriesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
