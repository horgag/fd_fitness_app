// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_by_id.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAssetByIdVars> _$gGetAssetByIdVarsSerializer =
    new _$GGetAssetByIdVarsSerializer();

class _$GGetAssetByIdVarsSerializer
    implements StructuredSerializer<GGetAssetByIdVars> {
  @override
  final Iterable<Type> types = const [GGetAssetByIdVars, _$GGetAssetByIdVars];
  @override
  final String wireName = 'GGetAssetByIdVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAssetByIdVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'assetID',
      serializers.serialize(object.assetID,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetAssetByIdVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAssetByIdVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'assetID':
          result.assetID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAssetByIdVars extends GGetAssetByIdVars {
  @override
  final String assetID;

  factory _$GGetAssetByIdVars(
          [void Function(GGetAssetByIdVarsBuilder)? updates]) =>
      (new GGetAssetByIdVarsBuilder()..update(updates)).build();

  _$GGetAssetByIdVars._({required this.assetID}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        assetID, 'GGetAssetByIdVars', 'assetID');
  }

  @override
  GGetAssetByIdVars rebuild(void Function(GGetAssetByIdVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAssetByIdVarsBuilder toBuilder() =>
      new GGetAssetByIdVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAssetByIdVars && assetID == other.assetID;
  }

  @override
  int get hashCode {
    return $jf($jc(0, assetID.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAssetByIdVars')
          ..add('assetID', assetID))
        .toString();
  }
}

class GGetAssetByIdVarsBuilder
    implements Builder<GGetAssetByIdVars, GGetAssetByIdVarsBuilder> {
  _$GGetAssetByIdVars? _$v;

  String? _assetID;
  String? get assetID => _$this._assetID;
  set assetID(String? assetID) => _$this._assetID = assetID;

  GGetAssetByIdVarsBuilder();

  GGetAssetByIdVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetID = $v.assetID;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAssetByIdVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAssetByIdVars;
  }

  @override
  void update(void Function(GGetAssetByIdVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAssetByIdVars build() {
    final _$result = _$v ??
        new _$GGetAssetByIdVars._(
            assetID: BuiltValueNullFieldError.checkNotNull(
                assetID, 'GGetAssetByIdVars', 'assetID'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
