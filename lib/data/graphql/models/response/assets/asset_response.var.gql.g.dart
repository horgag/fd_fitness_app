// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_response.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAssetResponseVars> _$gAssetResponseVarsSerializer =
    new _$GAssetResponseVarsSerializer();

class _$GAssetResponseVarsSerializer
    implements StructuredSerializer<GAssetResponseVars> {
  @override
  final Iterable<Type> types = const [GAssetResponseVars, _$GAssetResponseVars];
  @override
  final String wireName = 'GAssetResponseVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssetResponseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAssetResponseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAssetResponseVarsBuilder().build();
  }
}

class _$GAssetResponseVars extends GAssetResponseVars {
  factory _$GAssetResponseVars(
          [void Function(GAssetResponseVarsBuilder)? updates]) =>
      (new GAssetResponseVarsBuilder()..update(updates)).build();

  _$GAssetResponseVars._() : super._();

  @override
  GAssetResponseVars rebuild(
          void Function(GAssetResponseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssetResponseVarsBuilder toBuilder() =>
      new GAssetResponseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssetResponseVars;
  }

  @override
  int get hashCode {
    return 211955026;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAssetResponseVars').toString();
  }
}

class GAssetResponseVarsBuilder
    implements Builder<GAssetResponseVars, GAssetResponseVarsBuilder> {
  _$GAssetResponseVars? _$v;

  GAssetResponseVarsBuilder();

  @override
  void replace(GAssetResponseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssetResponseVars;
  }

  @override
  void update(void Function(GAssetResponseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssetResponseVars build() {
    final _$result = _$v ?? new _$GAssetResponseVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
