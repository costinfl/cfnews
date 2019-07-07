// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeList> _$homeListSerializer = new _$HomeListSerializer();

class _$HomeListSerializer implements StructuredSerializer<HomeList> {
  @override
  final Iterable<Type> types = const [HomeList, _$HomeList];
  @override
  final String wireName = 'HomeList';

  @override
  Iterable serialize(Serializers serializers, HomeList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(HomeListItem)])),
    ];

    return result;
  }

  @override
  HomeList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HomeListItem)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$HomeList extends HomeList {
  @override
  final BuiltList<HomeListItem> items;

  factory _$HomeList([void Function(HomeListBuilder) updates]) =>
      (new HomeListBuilder()..update(updates)).build();

  _$HomeList._({this.items}) : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('HomeList', 'items');
    }
  }

  @override
  HomeList rebuild(void Function(HomeListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeListBuilder toBuilder() => new HomeListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeList && items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(0, items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeList')..add('items', items))
        .toString();
  }
}

class HomeListBuilder implements Builder<HomeList, HomeListBuilder> {
  _$HomeList _$v;

  ListBuilder<HomeListItem> _items;
  ListBuilder<HomeListItem> get items =>
      _$this._items ??= new ListBuilder<HomeListItem>();
  set items(ListBuilder<HomeListItem> items) => _$this._items = items;

  HomeListBuilder();

  HomeListBuilder get _$this {
    if (_$v != null) {
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeList;
  }

  @override
  void update(void Function(HomeListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeList build() {
    _$HomeList _$result;
    try {
      _$result = _$v ?? new _$HomeList._(items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
