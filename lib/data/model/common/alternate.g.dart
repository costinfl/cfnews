// GENERATED CODE - DO NOT MODIFY BY HAND

part of alternate;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Alternate> _$alternateSerializer = new _$AlternateSerializer();

class _$AlternateSerializer implements StructuredSerializer<Alternate> {
  @override
  final Iterable<Type> types = const [Alternate, _$Alternate];
  @override
  final String wireName = 'Alternate';

  @override
  Iterable serialize(Serializers serializers, Alternate object,
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
    return result;
  }

  @override
  Alternate deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlternateBuilder();

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
      }
    }

    return result.build();
  }
}

class _$Alternate extends Alternate {
  @override
  final String href;
  @override
  final String type;

  factory _$Alternate([void Function(AlternateBuilder) updates]) =>
      (new AlternateBuilder()..update(updates)).build();

  _$Alternate._({this.href, this.type}) : super._();

  @override
  Alternate rebuild(void Function(AlternateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternateBuilder toBuilder() => new AlternateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Alternate && href == other.href && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, href.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Alternate')
          ..add('href', href)
          ..add('type', type))
        .toString();
  }
}

class AlternateBuilder implements Builder<Alternate, AlternateBuilder> {
  _$Alternate _$v;

  String _href;
  String get href => _$this._href;
  set href(String href) => _$this._href = href;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  AlternateBuilder();

  AlternateBuilder get _$this {
    if (_$v != null) {
      _href = _$v.href;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Alternate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Alternate;
  }

  @override
  void update(void Function(AlternateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Alternate build() {
    final _$result = _$v ?? new _$Alternate._(href: href, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
