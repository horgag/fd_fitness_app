// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_feed.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllFeedVars> _$gAllFeedVarsSerializer =
    new _$GAllFeedVarsSerializer();

class _$GAllFeedVarsSerializer implements StructuredSerializer<GAllFeedVars> {
  @override
  final Iterable<Type> types = const [GAllFeedVars, _$GAllFeedVars];
  @override
  final String wireName = 'GAllFeedVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAllFeedVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GAllFeedVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GAllFeedVarsBuilder().build();
  }
}

class _$GAllFeedVars extends GAllFeedVars {
  factory _$GAllFeedVars([void Function(GAllFeedVarsBuilder)? updates]) =>
      (new GAllFeedVarsBuilder()..update(updates)).build();

  _$GAllFeedVars._() : super._();

  @override
  GAllFeedVars rebuild(void Function(GAllFeedVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllFeedVarsBuilder toBuilder() => new GAllFeedVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllFeedVars;
  }

  @override
  int get hashCode {
    return 580319616;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GAllFeedVars').toString();
  }
}

class GAllFeedVarsBuilder
    implements Builder<GAllFeedVars, GAllFeedVarsBuilder> {
  _$GAllFeedVars? _$v;

  GAllFeedVarsBuilder();

  @override
  void replace(GAllFeedVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllFeedVars;
  }

  @override
  void update(void Function(GAllFeedVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllFeedVars build() {
    final _$result = _$v ?? new _$GAllFeedVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
