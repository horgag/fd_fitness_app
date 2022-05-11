// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_response.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedResponseData> _$gFeedResponseDataSerializer =
    new _$GFeedResponseDataSerializer();
Serializer<GFeedResponseData_mainImage> _$gFeedResponseDataMainImageSerializer =
    new _$GFeedResponseData_mainImageSerializer();
Serializer<GFeedResponseData_video> _$gFeedResponseDataVideoSerializer =
    new _$GFeedResponseData_videoSerializer();

class _$GFeedResponseDataSerializer
    implements StructuredSerializer<GFeedResponseData> {
  @override
  final Iterable<Type> types = const [GFeedResponseData, _$GFeedResponseData];
  @override
  final String wireName = 'GFeedResponseData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFeedResponseData object,
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
    value = object.subtitle;
    if (value != null) {
      result
        ..add('subtitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainContent;
    if (value != null) {
      result
        ..add('mainContent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mainImage;
    if (value != null) {
      result
        ..add('mainImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFeedResponseData_mainImage)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFeedResponseData_video)));
    }
    return result;
  }

  @override
  GFeedResponseData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedResponseDataBuilder();

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
        case 'subtitle':
          result.subtitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainContent':
          result.mainContent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mainImage':
          result.mainImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFeedResponseData_mainImage))!
              as GFeedResponseData_mainImage);
          break;
        case 'video':
          result.video.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFeedResponseData_video))!
              as GFeedResponseData_video);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedResponseData_mainImageSerializer
    implements StructuredSerializer<GFeedResponseData_mainImage> {
  @override
  final Iterable<Type> types = const [
    GFeedResponseData_mainImage,
    _$GFeedResponseData_mainImage
  ];
  @override
  final String wireName = 'GFeedResponseData_mainImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedResponseData_mainImage object,
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
  GFeedResponseData_mainImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedResponseData_mainImageBuilder();

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

class _$GFeedResponseData_videoSerializer
    implements StructuredSerializer<GFeedResponseData_video> {
  @override
  final Iterable<Type> types = const [
    GFeedResponseData_video,
    _$GFeedResponseData_video
  ];
  @override
  final String wireName = 'GFeedResponseData_video';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedResponseData_video object,
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
  GFeedResponseData_video deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedResponseData_videoBuilder();

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

class _$GFeedResponseData extends GFeedResponseData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? mainContent;
  @override
  final String? description;
  @override
  final GFeedResponseData_mainImage? mainImage;
  @override
  final GFeedResponseData_video? video;

  factory _$GFeedResponseData(
          [void Function(GFeedResponseDataBuilder)? updates]) =>
      (new GFeedResponseDataBuilder()..update(updates)).build();

  _$GFeedResponseData._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.subtitle,
      this.mainContent,
      this.description,
      this.mainImage,
      this.video})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedResponseData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GFeedResponseData', 'id');
  }

  @override
  GFeedResponseData rebuild(void Function(GFeedResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedResponseDataBuilder toBuilder() =>
      new GFeedResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedResponseData &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        subtitle == other.subtitle &&
        mainContent == other.mainContent &&
        description == other.description &&
        mainImage == other.mainImage &&
        video == other.video;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            title.hashCode),
                        subtitle.hashCode),
                    mainContent.hashCode),
                description.hashCode),
            mainImage.hashCode),
        video.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedResponseData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('subtitle', subtitle)
          ..add('mainContent', mainContent)
          ..add('description', description)
          ..add('mainImage', mainImage)
          ..add('video', video))
        .toString();
  }
}

class GFeedResponseDataBuilder
    implements Builder<GFeedResponseData, GFeedResponseDataBuilder> {
  _$GFeedResponseData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _subtitle;
  String? get subtitle => _$this._subtitle;
  set subtitle(String? subtitle) => _$this._subtitle = subtitle;

  String? _mainContent;
  String? get mainContent => _$this._mainContent;
  set mainContent(String? mainContent) => _$this._mainContent = mainContent;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GFeedResponseData_mainImageBuilder? _mainImage;
  GFeedResponseData_mainImageBuilder get mainImage =>
      _$this._mainImage ??= new GFeedResponseData_mainImageBuilder();
  set mainImage(GFeedResponseData_mainImageBuilder? mainImage) =>
      _$this._mainImage = mainImage;

  GFeedResponseData_videoBuilder? _video;
  GFeedResponseData_videoBuilder get video =>
      _$this._video ??= new GFeedResponseData_videoBuilder();
  set video(GFeedResponseData_videoBuilder? video) => _$this._video = video;

  GFeedResponseDataBuilder() {
    GFeedResponseData._initializeBuilder(this);
  }

  GFeedResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _subtitle = $v.subtitle;
      _mainContent = $v.mainContent;
      _description = $v.description;
      _mainImage = $v.mainImage?.toBuilder();
      _video = $v.video?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedResponseData;
  }

  @override
  void update(void Function(GFeedResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedResponseData build() {
    _$GFeedResponseData _$result;
    try {
      _$result = _$v ??
          new _$GFeedResponseData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedResponseData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GFeedResponseData', 'id'),
              title: title,
              subtitle: subtitle,
              mainContent: mainContent,
              description: description,
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
            'GFeedResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedResponseData_mainImage extends GFeedResponseData_mainImage {
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

  factory _$GFeedResponseData_mainImage(
          [void Function(GFeedResponseData_mainImageBuilder)? updates]) =>
      (new GFeedResponseData_mainImageBuilder()..update(updates)).build();

  _$GFeedResponseData_mainImage._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedResponseData_mainImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFeedResponseData_mainImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GFeedResponseData_mainImage', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GFeedResponseData_mainImage', 'fileName');
  }

  @override
  GFeedResponseData_mainImage rebuild(
          void Function(GFeedResponseData_mainImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedResponseData_mainImageBuilder toBuilder() =>
      new GFeedResponseData_mainImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedResponseData_mainImage &&
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
    return (newBuiltValueToStringHelper('GFeedResponseData_mainImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GFeedResponseData_mainImageBuilder
    implements
        Builder<GFeedResponseData_mainImage,
            GFeedResponseData_mainImageBuilder> {
  _$GFeedResponseData_mainImage? _$v;

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

  GFeedResponseData_mainImageBuilder() {
    GFeedResponseData_mainImage._initializeBuilder(this);
  }

  GFeedResponseData_mainImageBuilder get _$this {
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
  void replace(GFeedResponseData_mainImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedResponseData_mainImage;
  }

  @override
  void update(void Function(GFeedResponseData_mainImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedResponseData_mainImage build() {
    final _$result = _$v ??
        new _$GFeedResponseData_mainImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFeedResponseData_mainImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFeedResponseData_mainImage', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GFeedResponseData_mainImage', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GFeedResponseData_mainImage', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

class _$GFeedResponseData_video extends GFeedResponseData_video {
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

  factory _$GFeedResponseData_video(
          [void Function(GFeedResponseData_videoBuilder)? updates]) =>
      (new GFeedResponseData_videoBuilder()..update(updates)).build();

  _$GFeedResponseData_video._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedResponseData_video', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GFeedResponseData_video', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GFeedResponseData_video', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GFeedResponseData_video', 'fileName');
  }

  @override
  GFeedResponseData_video rebuild(
          void Function(GFeedResponseData_videoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedResponseData_videoBuilder toBuilder() =>
      new GFeedResponseData_videoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedResponseData_video &&
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
    return (newBuiltValueToStringHelper('GFeedResponseData_video')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GFeedResponseData_videoBuilder
    implements
        Builder<GFeedResponseData_video, GFeedResponseData_videoBuilder> {
  _$GFeedResponseData_video? _$v;

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

  GFeedResponseData_videoBuilder() {
    GFeedResponseData_video._initializeBuilder(this);
  }

  GFeedResponseData_videoBuilder get _$this {
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
  void replace(GFeedResponseData_video other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedResponseData_video;
  }

  @override
  void update(void Function(GFeedResponseData_videoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedResponseData_video build() {
    final _$result = _$v ??
        new _$GFeedResponseData_video._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFeedResponseData_video', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFeedResponseData_video', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GFeedResponseData_video', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GFeedResponseData_video', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
