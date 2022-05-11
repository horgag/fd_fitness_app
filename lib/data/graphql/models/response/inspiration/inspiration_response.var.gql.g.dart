// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspiration_response.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GInspirationResponseVars> _$gInspirationResponseVarsSerializer =
    new _$GInspirationResponseVarsSerializer();

class _$GInspirationResponseVarsSerializer
    implements StructuredSerializer<GInspirationResponseVars> {
  @override
  final Iterable<Type> types = const [
    GInspirationResponseVars,
    _$GInspirationResponseVars
  ];
  @override
  final String wireName = 'GInspirationResponseVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInspirationResponseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GInspirationResponseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GInspirationResponseVarsBuilder().build();
  }
}

class _$GInspirationResponseVars extends GInspirationResponseVars {
  factory _$GInspirationResponseVars(
          [void Function(GInspirationResponseVarsBuilder)? updates]) =>
      (new GInspirationResponseVarsBuilder()..update(updates)).build();

  _$GInspirationResponseVars._() : super._();

  @override
  GInspirationResponseVars rebuild(
          void Function(GInspirationResponseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInspirationResponseVarsBuilder toBuilder() =>
      new GInspirationResponseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInspirationResponseVars;
  }

  @override
  int get hashCode {
    return 259772104;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GInspirationResponseVars').toString();
  }
}

class GInspirationResponseVarsBuilder
    implements
        Builder<GInspirationResponseVars, GInspirationResponseVarsBuilder> {
  _$GInspirationResponseVars? _$v;

  GInspirationResponseVarsBuilder();

  @override
  void replace(GInspirationResponseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInspirationResponseVars;
  }

  @override
  void update(void Function(GInspirationResponseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GInspirationResponseVars build() {
    final _$result = _$v ?? new _$GInspirationResponseVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
