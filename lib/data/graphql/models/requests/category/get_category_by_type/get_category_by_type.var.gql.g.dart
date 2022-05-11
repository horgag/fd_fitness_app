// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_by_type.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCategoryByTypeVars> _$gGetCategoryByTypeVarsSerializer =
    new _$GGetCategoryByTypeVarsSerializer();

class _$GGetCategoryByTypeVarsSerializer
    implements StructuredSerializer<GGetCategoryByTypeVars> {
  @override
  final Iterable<Type> types = const [
    GGetCategoryByTypeVars,
    _$GGetCategoryByTypeVars
  ];
  @override
  final String wireName = 'GGetCategoryByTypeVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCategoryByTypeVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'categoryTitle',
      serializers.serialize(object.categoryTitle,
          specifiedType: const FullType(_i1.GCategoryTitle)),
    ];

    return result;
  }

  @override
  GGetCategoryByTypeVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoryByTypeVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'categoryTitle':
          result.categoryTitle = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCategoryTitle))
              as _i1.GCategoryTitle;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoryByTypeVars extends GGetCategoryByTypeVars {
  @override
  final _i1.GCategoryTitle categoryTitle;

  factory _$GGetCategoryByTypeVars(
          [void Function(GGetCategoryByTypeVarsBuilder)? updates]) =>
      (new GGetCategoryByTypeVarsBuilder()..update(updates)).build();

  _$GGetCategoryByTypeVars._({required this.categoryTitle}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        categoryTitle, 'GGetCategoryByTypeVars', 'categoryTitle');
  }

  @override
  GGetCategoryByTypeVars rebuild(
          void Function(GGetCategoryByTypeVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoryByTypeVarsBuilder toBuilder() =>
      new GGetCategoryByTypeVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoryByTypeVars &&
        categoryTitle == other.categoryTitle;
  }

  @override
  int get hashCode {
    return $jf($jc(0, categoryTitle.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCategoryByTypeVars')
          ..add('categoryTitle', categoryTitle))
        .toString();
  }
}

class GGetCategoryByTypeVarsBuilder
    implements Builder<GGetCategoryByTypeVars, GGetCategoryByTypeVarsBuilder> {
  _$GGetCategoryByTypeVars? _$v;

  _i1.GCategoryTitle? _categoryTitle;
  _i1.GCategoryTitle? get categoryTitle => _$this._categoryTitle;
  set categoryTitle(_i1.GCategoryTitle? categoryTitle) =>
      _$this._categoryTitle = categoryTitle;

  GGetCategoryByTypeVarsBuilder();

  GGetCategoryByTypeVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryTitle = $v.categoryTitle;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCategoryByTypeVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoryByTypeVars;
  }

  @override
  void update(void Function(GGetCategoryByTypeVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoryByTypeVars build() {
    final _$result = _$v ??
        new _$GGetCategoryByTypeVars._(
            categoryTitle: BuiltValueNullFieldError.checkNotNull(
                categoryTitle, 'GGetCategoryByTypeVars', 'categoryTitle'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
