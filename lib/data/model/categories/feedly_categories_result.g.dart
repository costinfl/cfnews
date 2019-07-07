// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_categories_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyCategoriesResult> _$feedlyCategoriesResultSerializer =
    new _$FeedlyCategoriesResultSerializer();

class _$FeedlyCategoriesResultSerializer
    implements StructuredSerializer<FeedlyCategoriesResult> {
  @override
  final Iterable<Type> types = const [
    FeedlyCategoriesResult,
    _$FeedlyCategoriesResult
  ];
  @override
  final String wireName = 'FeedlyCategoriesResult';

  @override
  Iterable serialize(Serializers serializers, FeedlyCategoriesResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'categories',
      serializers.serialize(object.categories,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FeedlyCategory)])),
    ];

    return result;
  }

  @override
  FeedlyCategoriesResult deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyCategoriesResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeedlyCategory)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyCategoriesResult extends FeedlyCategoriesResult {
  @override
  final BuiltList<FeedlyCategory> categories;

  factory _$FeedlyCategoriesResult(
          [void Function(FeedlyCategoriesResultBuilder) updates]) =>
      (new FeedlyCategoriesResultBuilder()..update(updates)).build();

  _$FeedlyCategoriesResult._({this.categories}) : super._() {
    if (categories == null) {
      throw new BuiltValueNullFieldError(
          'FeedlyCategoriesResult', 'categories');
    }
  }

  @override
  FeedlyCategoriesResult rebuild(
          void Function(FeedlyCategoriesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyCategoriesResultBuilder toBuilder() =>
      new FeedlyCategoriesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyCategoriesResult && categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc(0, categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyCategoriesResult')
          ..add('categories', categories))
        .toString();
  }
}

class FeedlyCategoriesResultBuilder
    implements Builder<FeedlyCategoriesResult, FeedlyCategoriesResultBuilder> {
  _$FeedlyCategoriesResult _$v;

  ListBuilder<FeedlyCategory> _categories;
  ListBuilder<FeedlyCategory> get categories =>
      _$this._categories ??= new ListBuilder<FeedlyCategory>();
  set categories(ListBuilder<FeedlyCategory> categories) =>
      _$this._categories = categories;

  FeedlyCategoriesResultBuilder();

  FeedlyCategoriesResultBuilder get _$this {
    if (_$v != null) {
      _categories = _$v.categories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyCategoriesResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyCategoriesResult;
  }

  @override
  void update(void Function(FeedlyCategoriesResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyCategoriesResult build() {
    _$FeedlyCategoriesResult _$result;
    try {
      _$result =
          _$v ?? new _$FeedlyCategoriesResult._(categories: categories.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyCategoriesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
