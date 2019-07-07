// GENERATED CODE - DO NOT MODIFY BY HAND

part of canonical;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Canonical> _$canonicalSerializer = new _$CanonicalSerializer();

class _$CanonicalSerializer implements StructuredSerializer<Canonical> {
  @override
  final Iterable<Type> types = const [Canonical, _$Canonical];
  @override
  final String wireName = 'Canonical';

  @override
  Iterable serialize(Serializers serializers, Canonical object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  Canonical deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new CanonicalBuilder().build();
  }
}

class _$Canonical extends Canonical {
  factory _$Canonical([void Function(CanonicalBuilder) updates]) =>
      (new CanonicalBuilder()..update(updates)).build();

  _$Canonical._() : super._();

  @override
  Canonical rebuild(void Function(CanonicalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CanonicalBuilder toBuilder() => new CanonicalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Canonical;
  }

  @override
  int get hashCode {
    return 247395889;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('Canonical').toString();
  }
}

class CanonicalBuilder implements Builder<Canonical, CanonicalBuilder> {
  _$Canonical _$v;

  CanonicalBuilder();

  @override
  void replace(Canonical other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Canonical;
  }

  @override
  void update(void Function(CanonicalBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Canonical build() {
    final _$result = _$v ?? new _$Canonical._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
