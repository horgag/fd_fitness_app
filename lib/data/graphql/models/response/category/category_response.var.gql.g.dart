// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCategoryFeedVars> _$gCategoryFeedVarsSerializer =
    new _$GCategoryFeedVarsSerializer();

class _$GCategoryFeedVarsSerializer
    implements StructuredSerializer<GCategoryFeedVars> {
  @override
  final Iterable<Type> types = const [GCategoryFeedVars, _$GCategoryFeedVars];
  @override
  final String wireName = 'GCategoryFeedVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCategoryFeedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCategoryFeedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCategoryFeedVarsBuilder().build();
  }
}

class _$GCategoryFeedVars extends GCategoryFeedVars {
  factory _$GCategoryFeedVars(
          [void Function(GCategoryFeedVarsBuilder)? updates]) =>
      (new GCategoryFeedVarsBuilder()..update(updates)).build();

  _$GCategoryFeedVars._() : super._();

  @override
  GCategoryFeedVars rebuild(void Function(GCategoryFeedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoryFeedVarsBuilder toBuilder() =>
      new GCategoryFeedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoryFeedVars;
  }

  @override
  int get hashCode {
    return 26982351;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCategoryFeedVars').toString();
  }
}

class GCategoryFeedVarsBuilder
    implements Builder<GCategoryFeedVars, GCategoryFeedVarsBuilder> {
  _$GCategoryFeedVars? _$v;

  GCategoryFeedVarsBuilder();

  @override
  void replace(GCategoryFeedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoryFeedVars;
  }

  @override
  void update(void Function(GCategoryFeedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCategoryFeedVars build() {
    final _$result = _$v ?? new _$GCategoryFeedVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
