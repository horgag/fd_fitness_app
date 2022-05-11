// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_by_name.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAssetByFileNameData> _$gGetAssetByFileNameDataSerializer =
    new _$GGetAssetByFileNameDataSerializer();
Serializer<GGetAssetByFileNameData_assets>
    _$gGetAssetByFileNameDataAssetsSerializer =
    new _$GGetAssetByFileNameData_assetsSerializer();

class _$GGetAssetByFileNameDataSerializer
    implements StructuredSerializer<GGetAssetByFileNameData> {
  @override
  final Iterable<Type> types = const [
    GGetAssetByFileNameData,
    _$GGetAssetByFileNameData
  ];
  @override
  final String wireName = 'GGetAssetByFileNameData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAssetByFileNameData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'assets',
      serializers.serialize(object.assets,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetAssetByFileNameData_assets)])),
    ];

    return result;
  }

  @override
  GGetAssetByFileNameData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAssetByFileNameDataBuilder();

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
                const FullType(GGetAssetByFileNameData_assets)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAssetByFileNameData_assetsSerializer
    implements StructuredSerializer<GGetAssetByFileNameData_assets> {
  @override
  final Iterable<Type> types = const [
    GGetAssetByFileNameData_assets,
    _$GGetAssetByFileNameData_assets
  ];
  @override
  final String wireName = 'GGetAssetByFileNameData_assets';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAssetByFileNameData_assets object,
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
  GGetAssetByFileNameData_assets deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAssetByFileNameData_assetsBuilder();

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

class _$GGetAssetByFileNameData extends GGetAssetByFileNameData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAssetByFileNameData_assets> assets;

  factory _$GGetAssetByFileNameData(
          [void Function(GGetAssetByFileNameDataBuilder)? updates]) =>
      (new GGetAssetByFileNameDataBuilder()..update(updates)).build();

  _$GGetAssetByFileNameData._({required this.G__typename, required this.assets})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAssetByFileNameData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        assets, 'GGetAssetByFileNameData', 'assets');
  }

  @override
  GGetAssetByFileNameData rebuild(
          void Function(GGetAssetByFileNameDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAssetByFileNameDataBuilder toBuilder() =>
      new GGetAssetByFileNameDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAssetByFileNameData &&
        G__typename == other.G__typename &&
        assets == other.assets;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), assets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAssetByFileNameData')
          ..add('G__typename', G__typename)
          ..add('assets', assets))
        .toString();
  }
}

class GGetAssetByFileNameDataBuilder
    implements
        Builder<GGetAssetByFileNameData, GGetAssetByFileNameDataBuilder> {
  _$GGetAssetByFileNameData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAssetByFileNameData_assets>? _assets;
  ListBuilder<GGetAssetByFileNameData_assets> get assets =>
      _$this._assets ??= new ListBuilder<GGetAssetByFileNameData_assets>();
  set assets(ListBuilder<GGetAssetByFileNameData_assets>? assets) =>
      _$this._assets = assets;

  GGetAssetByFileNameDataBuilder() {
    GGetAssetByFileNameData._initializeBuilder(this);
  }

  GGetAssetByFileNameDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _assets = $v.assets.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAssetByFileNameData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAssetByFileNameData;
  }

  @override
  void update(void Function(GGetAssetByFileNameDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAssetByFileNameData build() {
    _$GGetAssetByFileNameData _$result;
    try {
      _$result = _$v ??
          new _$GGetAssetByFileNameData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetAssetByFileNameData', 'G__typename'),
              assets: assets.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assets';
        assets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetAssetByFileNameData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAssetByFileNameData_assets extends GGetAssetByFileNameData_assets {
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

  factory _$GGetAssetByFileNameData_assets(
          [void Function(GGetAssetByFileNameData_assetsBuilder)? updates]) =>
      (new GGetAssetByFileNameData_assetsBuilder()..update(updates)).build();

  _$GGetAssetByFileNameData_assets._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAssetByFileNameData_assets', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetAssetByFileNameData_assets', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GGetAssetByFileNameData_assets', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GGetAssetByFileNameData_assets', 'fileName');
  }

  @override
  GGetAssetByFileNameData_assets rebuild(
          void Function(GGetAssetByFileNameData_assetsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAssetByFileNameData_assetsBuilder toBuilder() =>
      new GGetAssetByFileNameData_assetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAssetByFileNameData_assets &&
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
    return (newBuiltValueToStringHelper('GGetAssetByFileNameData_assets')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GGetAssetByFileNameData_assetsBuilder
    implements
        Builder<GGetAssetByFileNameData_assets,
            GGetAssetByFileNameData_assetsBuilder> {
  _$GGetAssetByFileNameData_assets? _$v;

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

  GGetAssetByFileNameData_assetsBuilder() {
    GGetAssetByFileNameData_assets._initializeBuilder(this);
  }

  GGetAssetByFileNameData_assetsBuilder get _$this {
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
  void replace(GGetAssetByFileNameData_assets other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAssetByFileNameData_assets;
  }

  @override
  void update(void Function(GGetAssetByFileNameData_assetsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAssetByFileNameData_assets build() {
    final _$result = _$v ??
        new _$GGetAssetByFileNameData_assets._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetAssetByFileNameData_assets', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetAssetByFileNameData_assets', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GGetAssetByFileNameData_assets', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GGetAssetByFileNameData_assets', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
