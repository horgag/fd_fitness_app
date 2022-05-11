// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_by_name.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAssetByFileNameVars> _$gGetAssetByFileNameVarsSerializer =
    new _$GGetAssetByFileNameVarsSerializer();

class _$GGetAssetByFileNameVarsSerializer
    implements StructuredSerializer<GGetAssetByFileNameVars> {
  @override
  final Iterable<Type> types = const [
    GGetAssetByFileNameVars,
    _$GGetAssetByFileNameVars
  ];
  @override
  final String wireName = 'GGetAssetByFileNameVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAssetByFileNameVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'assetFileName',
      serializers.serialize(object.assetFileName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetAssetByFileNameVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAssetByFileNameVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'assetFileName':
          result.assetFileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAssetByFileNameVars extends GGetAssetByFileNameVars {
  @override
  final String assetFileName;

  factory _$GGetAssetByFileNameVars(
          [void Function(GGetAssetByFileNameVarsBuilder)? updates]) =>
      (new GGetAssetByFileNameVarsBuilder()..update(updates)).build();

  _$GGetAssetByFileNameVars._({required this.assetFileName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        assetFileName, 'GGetAssetByFileNameVars', 'assetFileName');
  }

  @override
  GGetAssetByFileNameVars rebuild(
          void Function(GGetAssetByFileNameVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAssetByFileNameVarsBuilder toBuilder() =>
      new GGetAssetByFileNameVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAssetByFileNameVars &&
        assetFileName == other.assetFileName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, assetFileName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAssetByFileNameVars')
          ..add('assetFileName', assetFileName))
        .toString();
  }
}

class GGetAssetByFileNameVarsBuilder
    implements
        Builder<GGetAssetByFileNameVars, GGetAssetByFileNameVarsBuilder> {
  _$GGetAssetByFileNameVars? _$v;

  String? _assetFileName;
  String? get assetFileName => _$this._assetFileName;
  set assetFileName(String? assetFileName) =>
      _$this._assetFileName = assetFileName;

  GGetAssetByFileNameVarsBuilder();

  GGetAssetByFileNameVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetFileName = $v.assetFileName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAssetByFileNameVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAssetByFileNameVars;
  }

  @override
  void update(void Function(GGetAssetByFileNameVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAssetByFileNameVars build() {
    final _$result = _$v ??
        new _$GGetAssetByFileNameVars._(
            assetFileName: BuiltValueNullFieldError.checkNotNull(
                assetFileName, 'GGetAssetByFileNameVars', 'assetFileName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
