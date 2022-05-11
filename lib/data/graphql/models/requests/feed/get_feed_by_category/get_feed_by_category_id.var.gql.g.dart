// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feed_by_category_id.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedByCategoryIdVars> _$gFeedByCategoryIdVarsSerializer =
    new _$GFeedByCategoryIdVarsSerializer();

class _$GFeedByCategoryIdVarsSerializer
    implements StructuredSerializer<GFeedByCategoryIdVars> {
  @override
  final Iterable<Type> types = const [
    GFeedByCategoryIdVars,
    _$GFeedByCategoryIdVars
  ];
  @override
  final String wireName = 'GFeedByCategoryIdVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedByCategoryIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'categoryID',
      serializers.serialize(object.categoryID,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFeedByCategoryIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedByCategoryIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'categoryID':
          result.categoryID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedByCategoryIdVars extends GFeedByCategoryIdVars {
  @override
  final String categoryID;

  factory _$GFeedByCategoryIdVars(
          [void Function(GFeedByCategoryIdVarsBuilder)? updates]) =>
      (new GFeedByCategoryIdVarsBuilder()..update(updates)).build();

  _$GFeedByCategoryIdVars._({required this.categoryID}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        categoryID, 'GFeedByCategoryIdVars', 'categoryID');
  }

  @override
  GFeedByCategoryIdVars rebuild(
          void Function(GFeedByCategoryIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedByCategoryIdVarsBuilder toBuilder() =>
      new GFeedByCategoryIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedByCategoryIdVars && categoryID == other.categoryID;
  }

  @override
  int get hashCode {
    return $jf($jc(0, categoryID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedByCategoryIdVars')
          ..add('categoryID', categoryID))
        .toString();
  }
}

class GFeedByCategoryIdVarsBuilder
    implements Builder<GFeedByCategoryIdVars, GFeedByCategoryIdVarsBuilder> {
  _$GFeedByCategoryIdVars? _$v;

  String? _categoryID;
  String? get categoryID => _$this._categoryID;
  set categoryID(String? categoryID) => _$this._categoryID = categoryID;

  GFeedByCategoryIdVarsBuilder();

  GFeedByCategoryIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryID = $v.categoryID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedByCategoryIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedByCategoryIdVars;
  }

  @override
  void update(void Function(GFeedByCategoryIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedByCategoryIdVars build() {
    final _$result = _$v ??
        new _$GFeedByCategoryIdVars._(
            categoryID: BuiltValueNullFieldError.checkNotNull(
                categoryID, 'GFeedByCategoryIdVars', 'categoryID'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
