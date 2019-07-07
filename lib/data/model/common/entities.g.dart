// GENERATED CODE - DO NOT MODIFY BY HAND

part of entities;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Entities> _$entitiesSerializer = new _$EntitiesSerializer();

class _$EntitiesSerializer implements StructuredSerializer<Entities> {
  @override
  final Iterable<Type> types = const [Entities, _$Entities];
  @override
  final String wireName = 'Entities';

  @override
  Iterable serialize(Serializers serializers, Entities object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.salienceLevel != null) {
      result
        ..add('salienceLevel')
        ..add(serializers.serialize(object.salienceLevel,
            specifiedType: const FullType(String)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.mentions != null) {
      result
        ..add('mentions')
        ..add(serializers.serialize(object.mentions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Mentions)])));
    }
    return result;
  }

  @override
  Entities deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EntitiesBuilder();

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
        case 'salienceLevel':
          result.salienceLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mentions':
          result.mentions.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Mentions)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Entities extends Entities {
  @override
  final String id;
  @override
  final String salienceLevel;
  @override
  final String label;
  @override
  final BuiltList<Mentions> mentions;

  factory _$Entities([void Function(EntitiesBuilder) updates]) =>
      (new EntitiesBuilder()..update(updates)).build();

  _$Entities._({this.id, this.salienceLevel, this.label, this.mentions})
      : super._();

  @override
  Entities rebuild(void Function(EntitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntitiesBuilder toBuilder() => new EntitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Entities &&
        id == other.id &&
        salienceLevel == other.salienceLevel &&
        label == other.label &&
        mentions == other.mentions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), salienceLevel.hashCode), label.hashCode),
        mentions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Entities')
          ..add('id', id)
          ..add('salienceLevel', salienceLevel)
          ..add('label', label)
          ..add('mentions', mentions))
        .toString();
  }
}

class EntitiesBuilder implements Builder<Entities, EntitiesBuilder> {
  _$Entities _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _salienceLevel;
  String get salienceLevel => _$this._salienceLevel;
  set salienceLevel(String salienceLevel) =>
      _$this._salienceLevel = salienceLevel;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  ListBuilder<Mentions> _mentions;
  ListBuilder<Mentions> get mentions =>
      _$this._mentions ??= new ListBuilder<Mentions>();
  set mentions(ListBuilder<Mentions> mentions) => _$this._mentions = mentions;

  EntitiesBuilder();

  EntitiesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _salienceLevel = _$v.salienceLevel;
      _label = _$v.label;
      _mentions = _$v.mentions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Entities other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Entities;
  }

  @override
  void update(void Function(EntitiesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Entities build() {
    _$Entities _$result;
    try {
      _$result = _$v ??
          new _$Entities._(
              id: id,
              salienceLevel: salienceLevel,
              label: label,
              mentions: _mentions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'mentions';
        _mentions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Entities', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
