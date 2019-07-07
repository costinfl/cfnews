// GENERATED CODE - DO NOT MODIFY BY HAND

part of origin;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Origin> _$originSerializer = new _$OriginSerializer();

class _$OriginSerializer implements StructuredSerializer<Origin> {
  @override
  final Iterable<Type> types = const [Origin, _$Origin];
  @override
  final String wireName = 'Origin';

  @override
  Iterable serialize(Serializers serializers, Origin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.streamId != null) {
      result
        ..add('streamId')
        ..add(serializers.serialize(object.streamId,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('htmlUrl')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Origin deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OriginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'streamId':
          result.streamId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'htmlUrl':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Origin extends Origin {
  @override
  final String streamId;
  @override
  final String title;
  @override
  final String htmlUrl;

  factory _$Origin([void Function(OriginBuilder) updates]) =>
      (new OriginBuilder()..update(updates)).build();

  _$Origin._({this.streamId, this.title, this.htmlUrl}) : super._();

  @override
  Origin rebuild(void Function(OriginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OriginBuilder toBuilder() => new OriginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Origin &&
        streamId == other.streamId &&
        title == other.title &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, streamId.hashCode), title.hashCode), htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Origin')
          ..add('streamId', streamId)
          ..add('title', title)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class OriginBuilder implements Builder<Origin, OriginBuilder> {
  _$Origin _$v;

  String _streamId;
  String get streamId => _$this._streamId;
  set streamId(String streamId) => _$this._streamId = streamId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  OriginBuilder();

  OriginBuilder get _$this {
    if (_$v != null) {
      _streamId = _$v.streamId;
      _title = _$v.title;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Origin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Origin;
  }

  @override
  void update(void Function(OriginBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Origin build() {
    final _$result = _$v ??
        new _$Origin._(streamId: streamId, title: title, htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
