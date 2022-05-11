// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_inspirations.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllInspirationsData> _$gAllInspirationsDataSerializer =
    new _$GAllInspirationsDataSerializer();
Serializer<GAllInspirationsData_inspirationItems>
    _$gAllInspirationsDataInspirationItemsSerializer =
    new _$GAllInspirationsData_inspirationItemsSerializer();
Serializer<GAllInspirationsData_inspirationItems_mainImage>
    _$gAllInspirationsDataInspirationItemsMainImageSerializer =
    new _$GAllInspirationsData_inspirationItems_mainImageSerializer();
Serializer<GAllInspirationsData_inspirationItems_video>
    _$gAllInspirationsDataInspirationItemsVideoSerializer =
    new _$GAllInspirationsData_inspirationItems_videoSerializer();

class _$GAllInspirationsDataSerializer
    implements StructuredSerializer<GAllInspirationsData> {
  @override
  final Iterable<Type> types = const [
    GAllInspirationsData,
    _$GAllInspirationsData
  ];
  @override
  final String wireName = 'GAllInspirationsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllInspirationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'inspirationItems',
      serializers.serialize(object.inspirationItems,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GAllInspirationsData_inspirationItems)])),
    ];

    return result;
  }

  @override
  GAllInspirationsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllInspirationsDataBuilder();

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
        case 'inspirationItems':
          result.inspirationItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAllInspirationsData_inspirationItems)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllInspirationsData_inspirationItemsSerializer
    implements StructuredSerializer<GAllInspirationsData_inspirationItems> {
  @override
  final Iterable<Type> types = const [
    GAllInspirationsData_inspirationItems,
    _$GAllInspirationsData_inspirationItems
  ];
  @override
  final String wireName = 'GAllInspirationsData_inspirationItems';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllInspirationsData_inspirationItems object,
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
            specifiedType: const FullType(
                GAllInspirationsData_inspirationItems_mainImage)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GAllInspirationsData_inspirationItems_video)));
    }
    return result;
  }

  @override
  GAllInspirationsData_inspirationItems deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllInspirationsData_inspirationItemsBuilder();

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
                  specifiedType: const FullType(
                      GAllInspirationsData_inspirationItems_mainImage))!
              as GAllInspirationsData_inspirationItems_mainImage);
          break;
        case 'video':
          result.video.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GAllInspirationsData_inspirationItems_video))!
              as GAllInspirationsData_inspirationItems_video);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllInspirationsData_inspirationItems_mainImageSerializer
    implements
        StructuredSerializer<GAllInspirationsData_inspirationItems_mainImage> {
  @override
  final Iterable<Type> types = const [
    GAllInspirationsData_inspirationItems_mainImage,
    _$GAllInspirationsData_inspirationItems_mainImage
  ];
  @override
  final String wireName = 'GAllInspirationsData_inspirationItems_mainImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAllInspirationsData_inspirationItems_mainImage object,
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
  GAllInspirationsData_inspirationItems_mainImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllInspirationsData_inspirationItems_mainImageBuilder();

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

class _$GAllInspirationsData_inspirationItems_videoSerializer
    implements
        StructuredSerializer<GAllInspirationsData_inspirationItems_video> {
  @override
  final Iterable<Type> types = const [
    GAllInspirationsData_inspirationItems_video,
    _$GAllInspirationsData_inspirationItems_video
  ];
  @override
  final String wireName = 'GAllInspirationsData_inspirationItems_video';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GAllInspirationsData_inspirationItems_video object,
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
  GAllInspirationsData_inspirationItems_video deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllInspirationsData_inspirationItems_videoBuilder();

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

class _$GAllInspirationsData extends GAllInspirationsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GAllInspirationsData_inspirationItems> inspirationItems;

  factory _$GAllInspirationsData(
          [void Function(GAllInspirationsDataBuilder)? updates]) =>
      (new GAllInspirationsDataBuilder()..update(updates)).build();

  _$GAllInspirationsData._(
      {required this.G__typename, required this.inspirationItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAllInspirationsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        inspirationItems, 'GAllInspirationsData', 'inspirationItems');
  }

  @override
  GAllInspirationsData rebuild(
          void Function(GAllInspirationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllInspirationsDataBuilder toBuilder() =>
      new GAllInspirationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllInspirationsData &&
        G__typename == other.G__typename &&
        inspirationItems == other.inspirationItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), inspirationItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAllInspirationsData')
          ..add('G__typename', G__typename)
          ..add('inspirationItems', inspirationItems))
        .toString();
  }
}

class GAllInspirationsDataBuilder
    implements Builder<GAllInspirationsData, GAllInspirationsDataBuilder> {
  _$GAllInspirationsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAllInspirationsData_inspirationItems>? _inspirationItems;
  ListBuilder<GAllInspirationsData_inspirationItems> get inspirationItems =>
      _$this._inspirationItems ??=
          new ListBuilder<GAllInspirationsData_inspirationItems>();
  set inspirationItems(
          ListBuilder<GAllInspirationsData_inspirationItems>?
              inspirationItems) =>
      _$this._inspirationItems = inspirationItems;

  GAllInspirationsDataBuilder() {
    GAllInspirationsData._initializeBuilder(this);
  }

  GAllInspirationsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _inspirationItems = $v.inspirationItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllInspirationsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllInspirationsData;
  }

  @override
  void update(void Function(GAllInspirationsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllInspirationsData build() {
    _$GAllInspirationsData _$result;
    try {
      _$result = _$v ??
          new _$GAllInspirationsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAllInspirationsData', 'G__typename'),
              inspirationItems: inspirationItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inspirationItems';
        inspirationItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAllInspirationsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllInspirationsData_inspirationItems
    extends GAllInspirationsData_inspirationItems {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? title;
  @override
  final GAllInspirationsData_inspirationItems_mainImage? mainImage;
  @override
  final GAllInspirationsData_inspirationItems_video? video;

  factory _$GAllInspirationsData_inspirationItems(
          [void Function(GAllInspirationsData_inspirationItemsBuilder)?
              updates]) =>
      (new GAllInspirationsData_inspirationItemsBuilder()..update(updates))
          .build();

  _$GAllInspirationsData_inspirationItems._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.mainImage,
      this.video})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAllInspirationsData_inspirationItems', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GAllInspirationsData_inspirationItems', 'id');
  }

  @override
  GAllInspirationsData_inspirationItems rebuild(
          void Function(GAllInspirationsData_inspirationItemsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllInspirationsData_inspirationItemsBuilder toBuilder() =>
      new GAllInspirationsData_inspirationItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllInspirationsData_inspirationItems &&
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
    return (newBuiltValueToStringHelper('GAllInspirationsData_inspirationItems')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('mainImage', mainImage)
          ..add('video', video))
        .toString();
  }
}

class GAllInspirationsData_inspirationItemsBuilder
    implements
        Builder<GAllInspirationsData_inspirationItems,
            GAllInspirationsData_inspirationItemsBuilder> {
  _$GAllInspirationsData_inspirationItems? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  GAllInspirationsData_inspirationItems_mainImageBuilder? _mainImage;
  GAllInspirationsData_inspirationItems_mainImageBuilder get mainImage =>
      _$this._mainImage ??=
          new GAllInspirationsData_inspirationItems_mainImageBuilder();
  set mainImage(
          GAllInspirationsData_inspirationItems_mainImageBuilder? mainImage) =>
      _$this._mainImage = mainImage;

  GAllInspirationsData_inspirationItems_videoBuilder? _video;
  GAllInspirationsData_inspirationItems_videoBuilder get video =>
      _$this._video ??=
          new GAllInspirationsData_inspirationItems_videoBuilder();
  set video(GAllInspirationsData_inspirationItems_videoBuilder? video) =>
      _$this._video = video;

  GAllInspirationsData_inspirationItemsBuilder() {
    GAllInspirationsData_inspirationItems._initializeBuilder(this);
  }

  GAllInspirationsData_inspirationItemsBuilder get _$this {
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
  void replace(GAllInspirationsData_inspirationItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllInspirationsData_inspirationItems;
  }

  @override
  void update(
      void Function(GAllInspirationsData_inspirationItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllInspirationsData_inspirationItems build() {
    _$GAllInspirationsData_inspirationItems _$result;
    try {
      _$result = _$v ??
          new _$GAllInspirationsData_inspirationItems._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GAllInspirationsData_inspirationItems', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GAllInspirationsData_inspirationItems', 'id'),
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
            'GAllInspirationsData_inspirationItems',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllInspirationsData_inspirationItems_mainImage
    extends GAllInspirationsData_inspirationItems_mainImage {
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

  factory _$GAllInspirationsData_inspirationItems_mainImage(
          [void Function(
                  GAllInspirationsData_inspirationItems_mainImageBuilder)?
              updates]) =>
      (new GAllInspirationsData_inspirationItems_mainImageBuilder()
            ..update(updates))
          .build();

  _$GAllInspirationsData_inspirationItems_mainImage._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAllInspirationsData_inspirationItems_mainImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GAllInspirationsData_inspirationItems_mainImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GAllInspirationsData_inspirationItems_mainImage', 'url');
    BuiltValueNullFieldError.checkNotNull(fileName,
        'GAllInspirationsData_inspirationItems_mainImage', 'fileName');
  }

  @override
  GAllInspirationsData_inspirationItems_mainImage rebuild(
          void Function(GAllInspirationsData_inspirationItems_mainImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllInspirationsData_inspirationItems_mainImageBuilder toBuilder() =>
      new GAllInspirationsData_inspirationItems_mainImageBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllInspirationsData_inspirationItems_mainImage &&
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
    return (newBuiltValueToStringHelper(
            'GAllInspirationsData_inspirationItems_mainImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GAllInspirationsData_inspirationItems_mainImageBuilder
    implements
        Builder<GAllInspirationsData_inspirationItems_mainImage,
            GAllInspirationsData_inspirationItems_mainImageBuilder> {
  _$GAllInspirationsData_inspirationItems_mainImage? _$v;

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

  GAllInspirationsData_inspirationItems_mainImageBuilder() {
    GAllInspirationsData_inspirationItems_mainImage._initializeBuilder(this);
  }

  GAllInspirationsData_inspirationItems_mainImageBuilder get _$this {
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
  void replace(GAllInspirationsData_inspirationItems_mainImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllInspirationsData_inspirationItems_mainImage;
  }

  @override
  void update(
      void Function(GAllInspirationsData_inspirationItems_mainImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllInspirationsData_inspirationItems_mainImage build() {
    final _$result = _$v ??
        new _$GAllInspirationsData_inspirationItems_mainImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GAllInspirationsData_inspirationItems_mainImage',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GAllInspirationsData_inspirationItems_mainImage', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GAllInspirationsData_inspirationItems_mainImage', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(fileName,
                'GAllInspirationsData_inspirationItems_mainImage', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

class _$GAllInspirationsData_inspirationItems_video
    extends GAllInspirationsData_inspirationItems_video {
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

  factory _$GAllInspirationsData_inspirationItems_video(
          [void Function(GAllInspirationsData_inspirationItems_videoBuilder)?
              updates]) =>
      (new GAllInspirationsData_inspirationItems_videoBuilder()
            ..update(updates))
          .build();

  _$GAllInspirationsData_inspirationItems_video._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GAllInspirationsData_inspirationItems_video', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GAllInspirationsData_inspirationItems_video', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GAllInspirationsData_inspirationItems_video', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GAllInspirationsData_inspirationItems_video', 'fileName');
  }

  @override
  GAllInspirationsData_inspirationItems_video rebuild(
          void Function(GAllInspirationsData_inspirationItems_videoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllInspirationsData_inspirationItems_videoBuilder toBuilder() =>
      new GAllInspirationsData_inspirationItems_videoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllInspirationsData_inspirationItems_video &&
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
    return (newBuiltValueToStringHelper(
            'GAllInspirationsData_inspirationItems_video')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GAllInspirationsData_inspirationItems_videoBuilder
    implements
        Builder<GAllInspirationsData_inspirationItems_video,
            GAllInspirationsData_inspirationItems_videoBuilder> {
  _$GAllInspirationsData_inspirationItems_video? _$v;

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

  GAllInspirationsData_inspirationItems_videoBuilder() {
    GAllInspirationsData_inspirationItems_video._initializeBuilder(this);
  }

  GAllInspirationsData_inspirationItems_videoBuilder get _$this {
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
  void replace(GAllInspirationsData_inspirationItems_video other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllInspirationsData_inspirationItems_video;
  }

  @override
  void update(
      void Function(GAllInspirationsData_inspirationItems_videoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllInspirationsData_inspirationItems_video build() {
    final _$result = _$v ??
        new _$GAllInspirationsData_inspirationItems_video._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GAllInspirationsData_inspirationItems_video', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GAllInspirationsData_inspirationItems_video', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GAllInspirationsData_inspirationItems_video', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(fileName,
                'GAllInspirationsData_inspirationItems_video', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
