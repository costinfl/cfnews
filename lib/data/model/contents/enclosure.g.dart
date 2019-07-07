// GENERATED CODE - DO NOT MODIFY BY HAND

part of enclosure;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Enclosure> _$enclosureSerializer = new _$EnclosureSerializer();

class _$EnclosureSerializer implements StructuredSerializer<Enclosure> {
  @override
  final Iterable<Type> types = const [Enclosure, _$Enclosure];
  @override
  final String wireName = 'Enclosure';

  @override
  Iterable serialize(Serializers serializers, Enclosure object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.href != null) {
      result
        ..add('href')
        ..add(serializers.serialize(object.href,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.length != null) {
      result
        ..add('length')
        ..add(serializers.serialize(object.length,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Enclosure deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnclosureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'href':
          result.href = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'length':
          result.length = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Enclosure extends Enclosure {
  @override
  final String href;
  @override
  final String type;
  @override
  final int length;

  factory _$Enclosure([void Function(EnclosureBuilder) updates]) =>
      (new EnclosureBuilder()..update(updates)).build();

  _$Enclosure._({this.href, this.type, this.length}) : super._();

  @override
  Enclosure rebuild(void Function(EnclosureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnclosureBuilder toBuilder() => new EnclosureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Enclosure &&
        href == other.href &&
        type == other.type &&
        length == other.length;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, href.hashCode), type.hashCode), length.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Enclosure')
          ..add('href', href)
          ..add('type', type)
          ..add('length', length))
        .toString();
  }
}

class EnclosureBuilder implements Builder<Enclosure, EnclosureBuilder> {
  _$Enclosure _$v;

  String _href;
  String get href => _$this._href;
  set href(String href) => _$this._href = href;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _length;
  int get length => _$this._length;
  set length(int length) => _$this._length = length;

  EnclosureBuilder();

  EnclosureBuilder get _$this {
    if (_$v != null) {
      _href = _$v.href;
      _type = _$v.type;
      _length = _$v.length;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Enclosure other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Enclosure;
  }

  @override
  void update(void Function(EnclosureBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Enclosure build() {
    final _$result =
        _$v ?? new _$Enclosure._(href: href, type: type, length: length);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
