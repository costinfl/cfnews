// GENERATED CODE - DO NOT MODIFY BY HAND

part of feedly_collection;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedlyCollection> _$feedlyCollectionSerializer =
    new _$FeedlyCollectionSerializer();

class _$FeedlyCollectionSerializer
    implements StructuredSerializer<FeedlyCollection> {
  @override
  final Iterable<Type> types = const [FeedlyCollection, _$FeedlyCollection];
  @override
  final String wireName = 'FeedlyCollection';

  @override
  Iterable serialize(Serializers serializers, FeedlyCollection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    if (object.customizable != null) {
      result
        ..add('customizable')
        ..add(serializers.serialize(object.customizable,
            specifiedType: const FullType(bool)));
    }
    if (object.enterprise != null) {
      result
        ..add('enterprise')
        ..add(serializers.serialize(object.enterprise,
            specifiedType: const FullType(bool)));
    }
    if (object.feeds != null) {
      result
        ..add('feeds')
        ..add(serializers.serialize(object.feeds,
            specifiedType: const FullType(
                BuiltList, const [const FullType(FeedlyFeeds)])));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.numFeeds != null) {
      result
        ..add('numFeeds')
        ..add(serializers.serialize(object.numFeeds,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  FeedlyCollection deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedlyCollectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'customizable':
          result.customizable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'enterprise':
          result.enterprise = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'feeds':
          result.feeds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FeedlyFeeds)]))
              as BuiltList);
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numFeeds':
          result.numFeeds = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FeedlyCollection extends FeedlyCollection {
  @override
  final bool customizable;
  @override
  final bool enterprise;
  @override
  final BuiltList<FeedlyFeeds> feeds;
  @override
  final String label;
  @override
  final int numFeeds;
  @override
  final String id;

  factory _$FeedlyCollection(
          [void Function(FeedlyCollectionBuilder) updates]) =>
      (new FeedlyCollectionBuilder()..update(updates)).build();

  _$FeedlyCollection._(
      {this.customizable,
      this.enterprise,
      this.feeds,
      this.label,
      this.numFeeds,
      this.id})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('FeedlyCollection', 'id');
    }
  }

  @override
  FeedlyCollection rebuild(void Function(FeedlyCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedlyCollectionBuilder toBuilder() =>
      new FeedlyCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedlyCollection &&
        customizable == other.customizable &&
        enterprise == other.enterprise &&
        feeds == other.feeds &&
        label == other.label &&
        numFeeds == other.numFeeds &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, customizable.hashCode), enterprise.hashCode),
                    feeds.hashCode),
                label.hashCode),
            numFeeds.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedlyCollection')
          ..add('customizable', customizable)
          ..add('enterprise', enterprise)
          ..add('feeds', feeds)
          ..add('label', label)
          ..add('numFeeds', numFeeds)
          ..add('id', id))
        .toString();
  }
}

class FeedlyCollectionBuilder
    implements Builder<FeedlyCollection, FeedlyCollectionBuilder> {
  _$FeedlyCollection _$v;

  bool _customizable;
  bool get customizable => _$this._customizable;
  set customizable(bool customizable) => _$this._customizable = customizable;

  bool _enterprise;
  bool get enterprise => _$this._enterprise;
  set enterprise(bool enterprise) => _$this._enterprise = enterprise;

  ListBuilder<FeedlyFeeds> _feeds;
  ListBuilder<FeedlyFeeds> get feeds =>
      _$this._feeds ??= new ListBuilder<FeedlyFeeds>();
  set feeds(ListBuilder<FeedlyFeeds> feeds) => _$this._feeds = feeds;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  int _numFeeds;
  int get numFeeds => _$this._numFeeds;
  set numFeeds(int numFeeds) => _$this._numFeeds = numFeeds;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  FeedlyCollectionBuilder();

  FeedlyCollectionBuilder get _$this {
    if (_$v != null) {
      _customizable = _$v.customizable;
      _enterprise = _$v.enterprise;
      _feeds = _$v.feeds?.toBuilder();
      _label = _$v.label;
      _numFeeds = _$v.numFeeds;
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedlyCollection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FeedlyCollection;
  }

  @override
  void update(void Function(FeedlyCollectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedlyCollection build() {
    _$FeedlyCollection _$result;
    try {
      _$result = _$v ??
          new _$FeedlyCollection._(
              customizable: customizable,
              enterprise: enterprise,
              feeds: _feeds?.build(),
              label: label,
              numFeeds: numFeeds,
              id: id);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'feeds';
        _feeds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FeedlyCollection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
