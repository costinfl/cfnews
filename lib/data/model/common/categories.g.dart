// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Categories> _$categoriesSerializer = new _$CategoriesSerializer();

class _$CategoriesSerializer implements StructuredSerializer<Categories> {
  @override
  final Iterable<Type> types = const [Categories, _$Categories];
  @override
  final String wireName = 'Categories';

  @override
  Iterable serialize(Serializers serializers, Categories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Categories deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoriesBuilder();

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
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Categories extends Categories {
  @override
  final String id;
  @override
  final String label;

  factory _$Categories([void Function(CategoriesBuilder) updates]) =>
      (new CategoriesBuilder()..update(updates)).build();

  _$Categories._({this.id, this.label}) : super._();

  @override
  Categories rebuild(void Function(CategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesBuilder toBuilder() => new CategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Categories && id == other.id && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Categories')
          ..add('id', id)
          ..add('label', label))
        .toString();
  }
}

class CategoriesBuilder implements Builder<Categories, CategoriesBuilder> {
  _$Categories _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  CategoriesBuilder();

  CategoriesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _label = _$v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Categories other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Categories;
  }

  @override
  void update(void Function(CategoriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Categories build() {
    final _$result = _$v ?? new _$Categories._(id: id, label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
