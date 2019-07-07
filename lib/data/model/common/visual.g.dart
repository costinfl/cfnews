// GENERATED CODE - DO NOT MODIFY BY HAND

part of visual;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Visual> _$visualSerializer = new _$VisualSerializer();

class _$VisualSerializer implements StructuredSerializer<Visual> {
  @override
  final Iterable<Type> types = const [Visual, _$Visual];
  @override
  final String wireName = 'Visual';

  @override
  Iterable serialize(Serializers serializers, Visual object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.processor != null) {
      result
        ..add('processor')
        ..add(serializers.serialize(object.processor,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(int)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(int)));
    }
    if (object.contentType != null) {
      result
        ..add('contentType')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Visual deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VisualBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'processor':
          result.processor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'contentType':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Visual extends Visual {
  @override
  final String processor;
  @override
  final String url;
  @override
  final int width;
  @override
  final int height;
  @override
  final String contentType;

  factory _$Visual([void Function(VisualBuilder) updates]) =>
      (new VisualBuilder()..update(updates)).build();

  _$Visual._(
      {this.processor, this.url, this.width, this.height, this.contentType})
      : super._();

  @override
  Visual rebuild(void Function(VisualBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VisualBuilder toBuilder() => new VisualBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Visual &&
        processor == other.processor &&
        url == other.url &&
        width == other.width &&
        height == other.height &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, processor.hashCode), url.hashCode), width.hashCode),
            height.hashCode),
        contentType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Visual')
          ..add('processor', processor)
          ..add('url', url)
          ..add('width', width)
          ..add('height', height)
          ..add('contentType', contentType))
        .toString();
  }
}

class VisualBuilder implements Builder<Visual, VisualBuilder> {
  _$Visual _$v;

  String _processor;
  String get processor => _$this._processor;
  set processor(String processor) => _$this._processor = processor;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  VisualBuilder();

  VisualBuilder get _$this {
    if (_$v != null) {
      _processor = _$v.processor;
      _url = _$v.url;
      _width = _$v.width;
      _height = _$v.height;
      _contentType = _$v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Visual other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Visual;
  }

  @override
  void update(void Function(VisualBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Visual build() {
    final _$result = _$v ??
        new _$Visual._(
            processor: processor,
            url: url,
            width: width,
            height: height,
            contentType: contentType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
