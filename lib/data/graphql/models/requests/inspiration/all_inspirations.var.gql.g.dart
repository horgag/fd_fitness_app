// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_inspirations.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllInspirationsVars> _$gAllInspirationsVarsSerializer =
    new _$GAllInspirationsVarsSerializer();

class _$GAllInspirationsVarsSerializer
    implements StructuredSerializer<GAllInspirationsVars> {
  @override
  final Iterable<Type> types = const [
    GAllInspirationsVars,
    _$GAllInspirationsVars
  ];
  @override
  final String wireName = 'GAllInspirationsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllInspirationsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllInspirationsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllInspirationsVarsBuilder().build();
  }
}

class _$GAllInspirationsVars extends GAllInspirationsVars {
  factory _$GAllInspirationsVars(
          [void Function(GAllInspirationsVarsBuilder)? updates]) =>
      (new GAllInspirationsVarsBuilder()..update(updates)).build();

  _$GAllInspirationsVars._() : super._();

  @override
  GAllInspirationsVars rebuild(
          void Function(GAllInspirationsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllInspirationsVarsBuilder toBuilder() =>
      new GAllInspirationsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllInspirationsVars;
  }

  @override
  int get hashCode {
    return 1017951966;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAllInspirationsVars').toString();
  }
}

class GAllInspirationsVarsBuilder
    implements Builder<GAllInspirationsVars, GAllInspirationsVarsBuilder> {
  _$GAllInspirationsVars? _$v;

  GAllInspirationsVarsBuilder();

  @override
  void replace(GAllInspirationsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllInspirationsVars;
  }

  @override
  void update(void Function(GAllInspirationsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllInspirationsVars build() {
    final _$result = _$v ?? new _$GAllInspirationsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
