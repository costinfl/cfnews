// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_category;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyCategory> _$feedlyCategorySerializer =
    new _$FeedlyCategorySerializer();

class _$FeedlyCategorySerializer
    implements StructuredSerializer<FeedlyCategory> {
  @override
  final Iterable<Type> types = const [FeedlyCategory, _$FeedlyCategory];
  @override
  final String wireName = 'FeedlyCategory';

  @override
  Iterable serialize(Serializers serializers, FeedlyCategory object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.created != null) {
      result
        ..add('created')
        ..add(serializers.serialize(object.created,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  FeedlyCategory deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyCategoryBuilder();

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
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyCategory extends FeedlyCategory {
  @override
  final String id;
  @override
  final String label;
  @override
  final int created;

  factory _$FeedlyCategory([void Function(FeedlyCategoryBuilder) updates]) =>
      (new FeedlyCategoryBuilder()..update(updates)).build();

  _$FeedlyCategory._({this.id, this.label, this.created}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('FeedlyCategory', 'id');
    }
  }

  @override
  FeedlyCategory rebuild(void Function(FeedlyCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyCategoryBuilder toBuilder() =>
      new FeedlyCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyCategory &&
        id == other.id &&
        label == other.label &&
        created == other.created;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), label.hashCode), created.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyCategory')
          ..add('id', id)
          ..add('label', label)
          ..add('created', created))
        .toString();
  }
}

class FeedlyCategoryBuilder
    implements Builder<FeedlyCategory, FeedlyCategoryBuilder> {
  _$FeedlyCategory _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  int _created;
  int get created => _$this._created;
  set created(int created) => _$this._created = created;

  FeedlyCategoryBuilder();

  FeedlyCategoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _label = _$v.label;
      _created = _$v.created;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyCategory other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyCategory;
  }

  @override
  void update(void Function(FeedlyCategoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyCategory build() {
    final _$result =
        _$v ?? new _$FeedlyCategory._(id: id, label: label, created: created);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
