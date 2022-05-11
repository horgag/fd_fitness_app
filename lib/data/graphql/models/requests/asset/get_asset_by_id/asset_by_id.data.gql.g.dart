// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_by_id.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAssetByIdData> _$gGetAssetByIdDataSerializer =
    new _$GGetAssetByIdDataSerializer();
Serializer<GGetAssetByIdData_assets> _$gGetAssetByIdDataAssetsSerializer =
    new _$GGetAssetByIdData_assetsSerializer();

class _$GGetAssetByIdDataSerializer
    implements StructuredSerializer<GGetAssetByIdData> {
  @override
  final Iterable<Type> types = const [GGetAssetByIdData, _$GGetAssetByIdData];
  @override
  final String wireName = 'GGetAssetByIdData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetAssetByIdData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'assets',
      serializers.serialize(object.assets,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GGetAssetByIdData_assets)])),
    ];

    return result;
  }

  @override
  GGetAssetByIdData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAssetByIdDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assets':
          result.assets.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetAssetByIdData_assets)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAssetByIdData_assetsSerializer
    implements StructuredSerializer<GGetAssetByIdData_assets> {
  @override
  final Iterable<Type> types = const [
    GGetAssetByIdData_assets,
    _$GGetAssetByIdData_assets
  ];
  @override
  final String wireName = 'GGetAssetByIdData_assets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAssetByIdData_assets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'fileName',
      serializers.serialize(object.fileName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.mimeType;
    if (value != null) {
      result
        ..add('mimeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetAssetByIdData_assets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAssetByIdData_assetsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mimeType':
          result.mimeType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAssetByIdData extends GGetAssetByIdData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAssetByIdData_assets> assets;

  factory _$GGetAssetByIdData(
          [void Function(GGetAssetByIdDataBuilder)? updates]) =>
      (new GGetAssetByIdDataBuilder()..update(updates)).build();

  _$GGetAssetByIdData._({required this.G__typename, required this.assets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAssetByIdData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        assets, 'GGetAssetByIdData', 'assets');
  }

  @override
  GGetAssetByIdData rebuild(void Function(GGetAssetByIdDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAssetByIdDataBuilder toBuilder() =>
      new GGetAssetByIdDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAssetByIdData &&
        G__typename == other.G__typename &&
        assets == other.assets;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), assets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAssetByIdData')
          ..add('G__typename', G__typename)
          ..add('assets', assets))
        .toString();
  }
}

class GGetAssetByIdDataBuilder
    implements Builder<GGetAssetByIdData, GGetAssetByIdDataBuilder> {
  _$GGetAssetByIdData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAssetByIdData_assets>? _assets;
  ListBuilder<GGetAssetByIdData_assets> get assets =>
      _$this._assets ??= new ListBuilder<GGetAssetByIdData_assets>();
  set assets(ListBuilder<GGetAssetByIdData_assets>? assets) =>
      _$this._assets = assets;

  GGetAssetByIdDataBuilder() {
    GGetAssetByIdData._initializeBuilder(this);
  }

  GGetAssetByIdDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _assets = $v.assets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAssetByIdData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAssetByIdData;
  }

  @override
  void update(void Function(GGetAssetByIdDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAssetByIdData build() {
    _$GGetAssetByIdData _$result;
    try {
      _$result = _$v ??
          new _$GGetAssetByIdData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetAssetByIdData', 'G__typename'),
              assets: assets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assets';
        assets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetAssetByIdData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAssetByIdData_assets extends GGetAssetByIdData_assets {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final double? size;
  @override
  final String url;
  @override
  final String fileName;
  @override
  final String? mimeType;

  factory _$GGetAssetByIdData_assets(
          [void Function(GGetAssetByIdData_assetsBuilder)? updates]) =>
      (new GGetAssetByIdData_assetsBuilder()..update(updates)).build();

  _$GGetAssetByIdData_assets._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAssetByIdData_assets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GGetAssetByIdData_assets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GGetAssetByIdData_assets', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GGetAssetByIdData_assets', 'fileName');
  }

  @override
  GGetAssetByIdData_assets rebuild(
          void Function(GGetAssetByIdData_assetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAssetByIdData_assetsBuilder toBuilder() =>
      new GGetAssetByIdData_assetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAssetByIdData_assets &&
        G__typename == other.G__typename &&
        id == other.id &&
        size == other.size &&
        url == other.url &&
        fileName == other.fileName &&
        mimeType == other.mimeType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    size.hashCode),
                url.hashCode),
            fileName.hashCode),
        mimeType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAssetByIdData_assets')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GGetAssetByIdData_assetsBuilder
    implements
        Builder<GGetAssetByIdData_assets, GGetAssetByIdData_assetsBuilder> {
  _$GGetAssetByIdData_assets? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  double? _size;
  double? get size => _$this._size;
  set size(double? size) => _$this._size = size;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  GGetAssetByIdData_assetsBuilder() {
    GGetAssetByIdData_assets._initializeBuilder(this);
  }

  GGetAssetByIdData_assetsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _size = $v.size;
      _url = $v.url;
      _fileName = $v.fileName;
      _mimeType = $v.mimeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAssetByIdData_assets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAssetByIdData_assets;
  }

  @override
  void update(void Function(GGetAssetByIdData_assetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAssetByIdData_assets build() {
    final _$result = _$v ??
        new _$GGetAssetByIdData_assets._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetAssetByIdData_assets', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetAssetByIdData_assets', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GGetAssetByIdData_assets', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GGetAssetByIdData_assets', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
