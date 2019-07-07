// GENERATED CODE - DO NOT MODIFY BY HAND

part of common_topics;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommonTopics> _$commonTopicsSerializer =
    new _$CommonTopicsSerializer();

class _$CommonTopicsSerializer implements StructuredSerializer<CommonTopics> {
  @override
  final Iterable<Type> types = const [CommonTopics, _$CommonTopics];
  @override
  final String wireName = 'CommonTopics';

  @override
  Iterable serialize(Serializers serializers, CommonTopics object,
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
  CommonTopics deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommonTopicsBuilder();

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

class _$CommonTopics extends CommonTopics {
  @override
  final String id;
  @override
  final String label;

  factory _$CommonTopics([void Function(CommonTopicsBuilder) updates]) =>
      (new CommonTopicsBuilder()..update(updates)).build();

  _$CommonTopics._({this.id, this.label}) : super._();

  @override
  CommonTopics rebuild(void Function(CommonTopicsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonTopicsBuilder toBuilder() => new CommonTopicsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonTopics && id == other.id && label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommonTopics')
          ..add('id', id)
          ..add('label', label))
        .toString();
  }
}

class CommonTopicsBuilder
    implements Builder<CommonTopics, CommonTopicsBuilder> {
  _$CommonTopics _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  CommonTopicsBuilder();

  CommonTopicsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _label = _$v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonTopics other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommonTopics;
  }

  @override
  void update(void Function(CommonTopicsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommonTopics build() {
    final _$result = _$v ?? new _$CommonTopics._(id: id, label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
