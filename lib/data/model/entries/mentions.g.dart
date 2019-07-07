// GENERATED CODE - DO NOT MODIFY BY HAND

part of mentions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Mentions> _$mentionsSerializer = new _$MentionsSerializer();

class _$MentionsSerializer implements StructuredSerializer<Mentions> {
  @override
  final Iterable<Type> types = const [Mentions, _$Mentions];
  @override
  final String wireName = 'Mentions';

  @override
  Iterable serialize(Serializers serializers, Mentions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Mentions deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MentionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Mentions extends Mentions {
  @override
  final String text;

  factory _$Mentions([void Function(MentionsBuilder) updates]) =>
      (new MentionsBuilder()..update(updates)).build();

  _$Mentions._({this.text}) : super._();

  @override
  Mentions rebuild(void Function(MentionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MentionsBuilder toBuilder() => new MentionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mentions && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(0, text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Mentions')..add('text', text))
        .toString();
  }
}

class MentionsBuilder implements Builder<Mentions, MentionsBuilder> {
  _$Mentions _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  MentionsBuilder();

  MentionsBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Mentions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Mentions;
  }

  @override
  void update(void Function(MentionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Mentions build() {
    final _$result = _$v ?? new _$Mentions._(text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
