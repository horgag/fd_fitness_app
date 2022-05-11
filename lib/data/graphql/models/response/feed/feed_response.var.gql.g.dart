// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_response.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedResponseVars> _$gFeedResponseVarsSerializer =
    new _$GFeedResponseVarsSerializer();

class _$GFeedResponseVarsSerializer
    implements StructuredSerializer<GFeedResponseVars> {
  @override
  final Iterable<Type> types = const [GFeedResponseVars, _$GFeedResponseVars];
  @override
  final String wireName = 'GFeedResponseVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFeedResponseVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFeedResponseVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFeedResponseVarsBuilder().build();
  }
}

class _$GFeedResponseVars extends GFeedResponseVars {
  factory _$GFeedResponseVars(
          [void Function(GFeedResponseVarsBuilder)? updates]) =>
      (new GFeedResponseVarsBuilder()..update(updates)).build();

  _$GFeedResponseVars._() : super._();

  @override
  GFeedResponseVars rebuild(void Function(GFeedResponseVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedResponseVarsBuilder toBuilder() =>
      new GFeedResponseVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedResponseVars;
  }

  @override
  int get hashCode {
    return 246217481;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GFeedResponseVars').toString();
  }
}

class GFeedResponseVarsBuilder
    implements Builder<GFeedResponseVars, GFeedResponseVarsBuilder> {
  _$GFeedResponseVars? _$v;

  GFeedResponseVarsBuilder();

  @override
  void replace(GFeedResponseVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedResponseVars;
  }

  @override
  void update(void Function(GFeedResponseVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedResponseVars build() {
    final _$result = _$v ?? new _$GFeedResponseVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
