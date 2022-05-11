// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspiration_response.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GInspirationResponseData> _$gInspirationResponseDataSerializer =
    new _$GInspirationResponseDataSerializer();
Serializer<GInspirationResponseData_mainImage>
    _$gInspirationResponseDataMainImageSerializer =
    new _$GInspirationResponseData_mainImageSerializer();
Serializer<GInspirationResponseData_video>
    _$gInspirationResponseDataVideoSerializer =
    new _$GInspirationResponseData_videoSerializer();

class _$GInspirationResponseDataSerializer
    implements StructuredSerializer<GInspirationResponseData> {
  @override
  final Iterable<Type> types = const [
    GInspirationResponseData,
    _$GInspirationResponseData
  ];
  @override
  final String wireName = 'GInspirationResponseData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInspirationResponseData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainImage;
    if (value != null) {
      result
        ..add('mainImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GInspirationResponseData_mainImage)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GInspirationResponseData_video)));
    }
    return result;
  }

  @override
  GInspirationResponseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInspirationResponseDataBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainImage':
          result.mainImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GInspirationResponseData_mainImage))!
              as GInspirationResponseData_mainImage);
          break;
        case 'video':
          result.video.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GInspirationResponseData_video))!
              as GInspirationResponseData_video);
          break;
      }
    }

    return result.build();
  }
}

class _$GInspirationResponseData_mainImageSerializer
    implements StructuredSerializer<GInspirationResponseData_mainImage> {
  @override
  final Iterable<Type> types = const [
    GInspirationResponseData_mainImage,
    _$GInspirationResponseData_mainImage
  ];
  @override
  final String wireName = 'GInspirationResponseData_mainImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInspirationResponseData_mainImage object,
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
  GInspirationResponseData_mainImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInspirationResponseData_mainImageBuilder();

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

class _$GInspirationResponseData_videoSerializer
    implements StructuredSerializer<GInspirationResponseData_video> {
  @override
  final Iterable<Type> types = const [
    GInspirationResponseData_video,
    _$GInspirationResponseData_video
  ];
  @override
  final String wireName = 'GInspirationResponseData_video';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GInspirationResponseData_video object,
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
  GInspirationResponseData_video deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GInspirationResponseData_videoBuilder();

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

class _$GInspirationResponseData extends GInspirationResponseData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? title;
  @override
  final GInspirationResponseData_mainImage? mainImage;
  @override
  final GInspirationResponseData_video? video;

  factory _$GInspirationResponseData(
          [void Function(GInspirationResponseDataBuilder)? updates]) =>
      (new GInspirationResponseDataBuilder()..update(updates)).build();

  _$GInspirationResponseData._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.mainImage,
      this.video})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GInspirationResponseData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GInspirationResponseData', 'id');
  }

  @override
  GInspirationResponseData rebuild(
          void Function(GInspirationResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInspirationResponseDataBuilder toBuilder() =>
      new GInspirationResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInspirationResponseData &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        mainImage == other.mainImage &&
        video == other.video;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), title.hashCode),
            mainImage.hashCode),
        video.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GInspirationResponseData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('mainImage', mainImage)
          ..add('video', video))
        .toString();
  }
}

class GInspirationResponseDataBuilder
    implements
        Builder<GInspirationResponseData, GInspirationResponseDataBuilder> {
  _$GInspirationResponseData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GInspirationResponseData_mainImageBuilder? _mainImage;
  GInspirationResponseData_mainImageBuilder get mainImage =>
      _$this._mainImage ??= new GInspirationResponseData_mainImageBuilder();
  set mainImage(GInspirationResponseData_mainImageBuilder? mainImage) =>
      _$this._mainImage = mainImage;

  GInspirationResponseData_videoBuilder? _video;
  GInspirationResponseData_videoBuilder get video =>
      _$this._video ??= new GInspirationResponseData_videoBuilder();
  set video(GInspirationResponseData_videoBuilder? video) =>
      _$this._video = video;

  GInspirationResponseDataBuilder() {
    GInspirationResponseData._initializeBuilder(this);
  }

  GInspirationResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _mainImage = $v.mainImage?.toBuilder();
      _video = $v.video?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GInspirationResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInspirationResponseData;
  }

  @override
  void update(void Function(GInspirationResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GInspirationResponseData build() {
    _$GInspirationResponseData _$result;
    try {
      _$result = _$v ??
          new _$GInspirationResponseData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GInspirationResponseData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GInspirationResponseData', 'id'),
              title: title,
              mainImage: _mainImage?.build(),
              video: _video?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainImage';
        _mainImage?.build();
        _$failedField = 'video';
        _video?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GInspirationResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GInspirationResponseData_mainImage
    extends GInspirationResponseData_mainImage {
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

  factory _$GInspirationResponseData_mainImage(
          [void Function(GInspirationResponseData_mainImageBuilder)?
              updates]) =>
      (new GInspirationResponseData_mainImageBuilder()..update(updates))
          .build();

  _$GInspirationResponseData_mainImage._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GInspirationResponseData_mainImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GInspirationResponseData_mainImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GInspirationResponseData_mainImage', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GInspirationResponseData_mainImage', 'fileName');
  }

  @override
  GInspirationResponseData_mainImage rebuild(
          void Function(GInspirationResponseData_mainImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInspirationResponseData_mainImageBuilder toBuilder() =>
      new GInspirationResponseData_mainImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInspirationResponseData_mainImage &&
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
    return (newBuiltValueToStringHelper('GInspirationResponseData_mainImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GInspirationResponseData_mainImageBuilder
    implements
        Builder<GInspirationResponseData_mainImage,
            GInspirationResponseData_mainImageBuilder> {
  _$GInspirationResponseData_mainImage? _$v;

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

  GInspirationResponseData_mainImageBuilder() {
    GInspirationResponseData_mainImage._initializeBuilder(this);
  }

  GInspirationResponseData_mainImageBuilder get _$this {
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
  void replace(GInspirationResponseData_mainImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInspirationResponseData_mainImage;
  }

  @override
  void update(
      void Function(GInspirationResponseData_mainImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GInspirationResponseData_mainImage build() {
    final _$result = _$v ??
        new _$GInspirationResponseData_mainImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GInspirationResponseData_mainImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GInspirationResponseData_mainImage', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GInspirationResponseData_mainImage', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GInspirationResponseData_mainImage', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

class _$GInspirationResponseData_video extends GInspirationResponseData_video {
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

  factory _$GInspirationResponseData_video(
          [void Function(GInspirationResponseData_videoBuilder)? updates]) =>
      (new GInspirationResponseData_videoBuilder()..update(updates)).build();

  _$GInspirationResponseData_video._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GInspirationResponseData_video', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GInspirationResponseData_video', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GInspirationResponseData_video', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GInspirationResponseData_video', 'fileName');
  }

  @override
  GInspirationResponseData_video rebuild(
          void Function(GInspirationResponseData_videoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GInspirationResponseData_videoBuilder toBuilder() =>
      new GInspirationResponseData_videoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GInspirationResponseData_video &&
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
    return (newBuiltValueToStringHelper('GInspirationResponseData_video')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GInspirationResponseData_videoBuilder
    implements
        Builder<GInspirationResponseData_video,
            GInspirationResponseData_videoBuilder> {
  _$GInspirationResponseData_video? _$v;

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

  GInspirationResponseData_videoBuilder() {
    GInspirationResponseData_video._initializeBuilder(this);
  }

  GInspirationResponseData_videoBuilder get _$this {
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
  void replace(GInspirationResponseData_video other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GInspirationResponseData_video;
  }

  @override
  void update(void Function(GInspirationResponseData_videoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GInspirationResponseData_video build() {
    final _$result = _$v ??
        new _$GInspirationResponseData_video._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GInspirationResponseData_video', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GInspirationResponseData_video', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GInspirationResponseData_video', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GInspirationResponseData_video', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
