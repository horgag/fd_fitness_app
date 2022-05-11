// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_response.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAssetResponseData> _$gAssetResponseDataSerializer =
    new _$GAssetResponseDataSerializer();

class _$GAssetResponseDataSerializer
    implements StructuredSerializer<GAssetResponseData> {
  @override
  final Iterable<Type> types = const [GAssetResponseData, _$GAssetResponseData];
  @override
  final String wireName = 'GAssetResponseData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAssetResponseData object,
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
  GAssetResponseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAssetResponseDataBuilder();

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

class _$GAssetResponseData extends GAssetResponseData {
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

  factory _$GAssetResponseData(
          [void Function(GAssetResponseDataBuilder)? updates]) =>
      (new GAssetResponseDataBuilder()..update(updates)).build();

  _$GAssetResponseData._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAssetResponseData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GAssetResponseData', 'id');
    BuiltValueNullFieldError.checkNotNull(url, 'GAssetResponseData', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GAssetResponseData', 'fileName');
  }

  @override
  GAssetResponseData rebuild(
          void Function(GAssetResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAssetResponseDataBuilder toBuilder() =>
      new GAssetResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAssetResponseData &&
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
    return (newBuiltValueToStringHelper('GAssetResponseData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GAssetResponseDataBuilder
    implements Builder<GAssetResponseData, GAssetResponseDataBuilder> {
  _$GAssetResponseData? _$v;

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

  GAssetResponseDataBuilder() {
    GAssetResponseData._initializeBuilder(this);
  }

  GAssetResponseDataBuilder get _$this {
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
  void replace(GAssetResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAssetResponseData;
  }

  @override
  void update(void Function(GAssetResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAssetResponseData build() {
    final _$result = _$v ??
        new _$GAssetResponseData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GAssetResponseData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GAssetResponseData', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GAssetResponseData', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GAssetResponseData', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
