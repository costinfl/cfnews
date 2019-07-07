// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_contents;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyContents> _$feedlyContentsSerializer =
    new _$FeedlyContentsSerializer();

class _$FeedlyContentsSerializer
    implements StructuredSerializer<FeedlyContents> {
  @override
  final Iterable<Type> types = const [FeedlyContents, _$FeedlyContents];
  @override
  final String wireName = 'FeedlyContents';

  @override
  Iterable serialize(Serializers serializers, FeedlyContents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.updated != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(object.updated,
            specifiedType: const FullType(int)));
    }
    if (object.alternate != null) {
      result
        ..add('alternate')
        ..add(serializers.serialize(object.alternate,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Alternate)])));
    }
    if (object.direction != null) {
      result
        ..add('direction')
        ..add(serializers.serialize(object.direction,
            specifiedType: const FullType(String)));
    }
    if (object.continuation != null) {
      result
        ..add('continuation')
        ..add(serializers.serialize(object.continuation,
            specifiedType: const FullType(String)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FeedlyContentsItems)])));
    }
    return result;
  }

  @override
  FeedlyContents deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyContentsBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated':
          result.updated = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'alternate':
          result.alternate.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Alternate)])) as BuiltList);
          break;
        case 'direction':
          result.direction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'continuation':
          result.continuation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeedlyContentsItems)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyContents extends FeedlyContents {
  @override
  final String id;
  @override
  final String title;
  @override
  final int updated;
  @override
  final BuiltList<Alternate> alternate;
  @override
  final String direction;
  @override
  final String continuation;
  @override
  final BuiltList<FeedlyContentsItems> items;

  factory _$FeedlyContents([void Function(FeedlyContentsBuilder) updates]) =>
      (new FeedlyContentsBuilder()..update(updates)).build();

  _$FeedlyContents._(
      {this.id,
      this.title,
      this.updated,
      this.alternate,
      this.direction,
      this.continuation,
      this.items})
      : super._();

  @override
  FeedlyContents rebuild(void Function(FeedlyContentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyContentsBuilder toBuilder() =>
      new FeedlyContentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyContents &&
        id == other.id &&
        title == other.title &&
        updated == other.updated &&
        alternate == other.alternate &&
        direction == other.direction &&
        continuation == other.continuation &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), title.hashCode),
                        updated.hashCode),
                    alternate.hashCode),
                direction.hashCode),
            continuation.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyContents')
          ..add('id', id)
          ..add('title', title)
          ..add('updated', updated)
          ..add('alternate', alternate)
          ..add('direction', direction)
          ..add('continuation', continuation)
          ..add('items', items))
        .toString();
  }
}

class FeedlyContentsBuilder
    implements Builder<FeedlyContents, FeedlyContentsBuilder> {
  _$FeedlyContents _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _updated;
  int get updated => _$this._updated;
  set updated(int updated) => _$this._updated = updated;

  ListBuilder<Alternate> _alternate;
  ListBuilder<Alternate> get alternate =>
      _$this._alternate ??= new ListBuilder<Alternate>();
  set alternate(ListBuilder<Alternate> alternate) =>
      _$this._alternate = alternate;

  String _direction;
  String get direction => _$this._direction;
  set direction(String direction) => _$this._direction = direction;

  String _continuation;
  String get continuation => _$this._continuation;
  set continuation(String continuation) => _$this._continuation = continuation;

  ListBuilder<FeedlyContentsItems> _items;
  ListBuilder<FeedlyContentsItems> get items =>
      _$this._items ??= new ListBuilder<FeedlyContentsItems>();
  set items(ListBuilder<FeedlyContentsItems> items) => _$this._items = items;

  FeedlyContentsBuilder();

  FeedlyContentsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _updated = _$v.updated;
      _alternate = _$v.alternate?.toBuilder();
      _direction = _$v.direction;
      _continuation = _$v.continuation;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyContents other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyContents;
  }

  @override
  void update(void Function(FeedlyContentsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyContents build() {
    _$FeedlyContents _$result;
    try {
      _$result = _$v ??
          new _$FeedlyContents._(
              id: id,
              title: title,
              updated: updated,
              alternate: _alternate?.build(),
              direction: direction,
              continuation: continuation,
              items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'alternate';
        _alternate?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyContents', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
