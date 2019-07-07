// GENERATED CODE - DO NOT MODIFY BY HAND

part of summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Summary> _$summarySerializer = new _$SummarySerializer();

class _$SummarySerializer implements StructuredSerializer<Summary> {
  @override
  final Iterable<Type> types = const [Summary, _$Summary];
  @override
  final String wireName = 'Summary';

  @override
  Iterable serialize(Serializers serializers, Summary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.direction != null) {
      result
        ..add('direction')
        ..add(serializers.serialize(object.direction,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Summary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'direction':
          result.direction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Summary extends Summary {
  @override
  final String content;
  @override
  final String direction;

  factory _$Summary([void Function(SummaryBuilder) updates]) =>
      (new SummaryBuilder()..update(updates)).build();

  _$Summary._({this.content, this.direction}) : super._();

  @override
  Summary rebuild(void Function(SummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryBuilder toBuilder() => new SummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Summary &&
        content == other.content &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, content.hashCode), direction.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Summary')
          ..add('content', content)
          ..add('direction', direction))
        .toString();
  }
}

class SummaryBuilder implements Builder<Summary, SummaryBuilder> {
  _$Summary _$v;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _direction;
  String get direction => _$this._direction;
  set direction(String direction) => _$this._direction = direction;

  SummaryBuilder();

  SummaryBuilder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _direction = _$v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Summary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Summary;
  }

  @override
  void update(void Function(SummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Summary build() {
    final _$result =
        _$v ?? new _$Summary._(content: content, direction: direction);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
