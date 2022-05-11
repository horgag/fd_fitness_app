// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_feed.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAllFeedData> _$gAllFeedDataSerializer =
    new _$GAllFeedDataSerializer();
Serializer<GAllFeedData_feedItems> _$gAllFeedDataFeedItemsSerializer =
    new _$GAllFeedData_feedItemsSerializer();
Serializer<GAllFeedData_feedItems_mainImage>
    _$gAllFeedDataFeedItemsMainImageSerializer =
    new _$GAllFeedData_feedItems_mainImageSerializer();
Serializer<GAllFeedData_feedItems_video>
    _$gAllFeedDataFeedItemsVideoSerializer =
    new _$GAllFeedData_feedItems_videoSerializer();

class _$GAllFeedDataSerializer implements StructuredSerializer<GAllFeedData> {
  @override
  final Iterable<Type> types = const [GAllFeedData, _$GAllFeedData];
  @override
  final String wireName = 'GAllFeedData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GAllFeedData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'feedItems',
      serializers.serialize(object.feedItems,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GAllFeedData_feedItems)])),
    ];

    return result;
  }

  @override
  GAllFeedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllFeedDataBuilder();

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
        case 'feedItems':
          result.feedItems.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GAllFeedData_feedItems)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllFeedData_feedItemsSerializer
    implements StructuredSerializer<GAllFeedData_feedItems> {
  @override
  final Iterable<Type> types = const [
    GAllFeedData_feedItems,
    _$GAllFeedData_feedItems
  ];
  @override
  final String wireName = 'GAllFeedData_feedItems';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllFeedData_feedItems object,
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
            specifiedType: const FullType(GAllFeedData_feedItems_mainImage)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GAllFeedData_feedItems_video)));
    }
    return result;
  }

  @override
  GAllFeedData_feedItems deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllFeedData_feedItemsBuilder();

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
                  specifiedType:
                      const FullType(GAllFeedData_feedItems_mainImage))!
              as GAllFeedData_feedItems_mainImage);
          break;
        case 'video':
          result.video.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GAllFeedData_feedItems_video))!
              as GAllFeedData_feedItems_video);
          break;
      }
    }

    return result.build();
  }
}

class _$GAllFeedData_feedItems_mainImageSerializer
    implements StructuredSerializer<GAllFeedData_feedItems_mainImage> {
  @override
  final Iterable<Type> types = const [
    GAllFeedData_feedItems_mainImage,
    _$GAllFeedData_feedItems_mainImage
  ];
  @override
  final String wireName = 'GAllFeedData_feedItems_mainImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllFeedData_feedItems_mainImage object,
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
  GAllFeedData_feedItems_mainImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllFeedData_feedItems_mainImageBuilder();

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

class _$GAllFeedData_feedItems_videoSerializer
    implements StructuredSerializer<GAllFeedData_feedItems_video> {
  @override
  final Iterable<Type> types = const [
    GAllFeedData_feedItems_video,
    _$GAllFeedData_feedItems_video
  ];
  @override
  final String wireName = 'GAllFeedData_feedItems_video';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAllFeedData_feedItems_video object,
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
  GAllFeedData_feedItems_video deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAllFeedData_feedItems_videoBuilder();

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

class _$GAllFeedData extends GAllFeedData {
  @override
  final String G__typename;
  @override
  final BuiltList<GAllFeedData_feedItems> feedItems;

  factory _$GAllFeedData([void Function(GAllFeedDataBuilder)? updates]) =>
      (new GAllFeedDataBuilder()..update(updates)).build();

  _$GAllFeedData._({required this.G__typename, required this.feedItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAllFeedData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        feedItems, 'GAllFeedData', 'feedItems');
  }

  @override
  GAllFeedData rebuild(void Function(GAllFeedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllFeedDataBuilder toBuilder() => new GAllFeedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllFeedData &&
        G__typename == other.G__typename &&
        feedItems == other.feedItems;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), feedItems.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAllFeedData')
          ..add('G__typename', G__typename)
          ..add('feedItems', feedItems))
        .toString();
  }
}

class GAllFeedDataBuilder
    implements Builder<GAllFeedData, GAllFeedDataBuilder> {
  _$GAllFeedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GAllFeedData_feedItems>? _feedItems;
  ListBuilder<GAllFeedData_feedItems> get feedItems =>
      _$this._feedItems ??= new ListBuilder<GAllFeedData_feedItems>();
  set feedItems(ListBuilder<GAllFeedData_feedItems>? feedItems) =>
      _$this._feedItems = feedItems;

  GAllFeedDataBuilder() {
    GAllFeedData._initializeBuilder(this);
  }

  GAllFeedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _feedItems = $v.feedItems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAllFeedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllFeedData;
  }

  @override
  void update(void Function(GAllFeedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllFeedData build() {
    _$GAllFeedData _$result;
    try {
      _$result = _$v ??
          new _$GAllFeedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAllFeedData', 'G__typename'),
              feedItems: feedItems.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'feedItems';
        feedItems.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAllFeedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllFeedData_feedItems extends GAllFeedData_feedItems {
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
  final GAllFeedData_feedItems_mainImage? mainImage;
  @override
  final GAllFeedData_feedItems_video? video;

  factory _$GAllFeedData_feedItems(
          [void Function(GAllFeedData_feedItemsBuilder)? updates]) =>
      (new GAllFeedData_feedItemsBuilder()..update(updates)).build();

  _$GAllFeedData_feedItems._(
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
        G__typename, 'GAllFeedData_feedItems', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GAllFeedData_feedItems', 'id');
  }

  @override
  GAllFeedData_feedItems rebuild(
          void Function(GAllFeedData_feedItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllFeedData_feedItemsBuilder toBuilder() =>
      new GAllFeedData_feedItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllFeedData_feedItems &&
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
    return (newBuiltValueToStringHelper('GAllFeedData_feedItems')
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

class GAllFeedData_feedItemsBuilder
    implements Builder<GAllFeedData_feedItems, GAllFeedData_feedItemsBuilder> {
  _$GAllFeedData_feedItems? _$v;

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

  GAllFeedData_feedItems_mainImageBuilder? _mainImage;
  GAllFeedData_feedItems_mainImageBuilder get mainImage =>
      _$this._mainImage ??= new GAllFeedData_feedItems_mainImageBuilder();
  set mainImage(GAllFeedData_feedItems_mainImageBuilder? mainImage) =>
      _$this._mainImage = mainImage;

  GAllFeedData_feedItems_videoBuilder? _video;
  GAllFeedData_feedItems_videoBuilder get video =>
      _$this._video ??= new GAllFeedData_feedItems_videoBuilder();
  set video(GAllFeedData_feedItems_videoBuilder? video) =>
      _$this._video = video;

  GAllFeedData_feedItemsBuilder() {
    GAllFeedData_feedItems._initializeBuilder(this);
  }

  GAllFeedData_feedItemsBuilder get _$this {
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
  void replace(GAllFeedData_feedItems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllFeedData_feedItems;
  }

  @override
  void update(void Function(GAllFeedData_feedItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllFeedData_feedItems build() {
    _$GAllFeedData_feedItems _$result;
    try {
      _$result = _$v ??
          new _$GAllFeedData_feedItems._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GAllFeedData_feedItems', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GAllFeedData_feedItems', 'id'),
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
            'GAllFeedData_feedItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GAllFeedData_feedItems_mainImage
    extends GAllFeedData_feedItems_mainImage {
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

  factory _$GAllFeedData_feedItems_mainImage(
          [void Function(GAllFeedData_feedItems_mainImageBuilder)? updates]) =>
      (new GAllFeedData_feedItems_mainImageBuilder()..update(updates)).build();

  _$GAllFeedData_feedItems_mainImage._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAllFeedData_feedItems_mainImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GAllFeedData_feedItems_mainImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GAllFeedData_feedItems_mainImage', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GAllFeedData_feedItems_mainImage', 'fileName');
  }

  @override
  GAllFeedData_feedItems_mainImage rebuild(
          void Function(GAllFeedData_feedItems_mainImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllFeedData_feedItems_mainImageBuilder toBuilder() =>
      new GAllFeedData_feedItems_mainImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllFeedData_feedItems_mainImage &&
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
    return (newBuiltValueToStringHelper('GAllFeedData_feedItems_mainImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GAllFeedData_feedItems_mainImageBuilder
    implements
        Builder<GAllFeedData_feedItems_mainImage,
            GAllFeedData_feedItems_mainImageBuilder> {
  _$GAllFeedData_feedItems_mainImage? _$v;

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

  GAllFeedData_feedItems_mainImageBuilder() {
    GAllFeedData_feedItems_mainImage._initializeBuilder(this);
  }

  GAllFeedData_feedItems_mainImageBuilder get _$this {
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
  void replace(GAllFeedData_feedItems_mainImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllFeedData_feedItems_mainImage;
  }

  @override
  void update(void Function(GAllFeedData_feedItems_mainImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllFeedData_feedItems_mainImage build() {
    final _$result = _$v ??
        new _$GAllFeedData_feedItems_mainImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GAllFeedData_feedItems_mainImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GAllFeedData_feedItems_mainImage', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GAllFeedData_feedItems_mainImage', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GAllFeedData_feedItems_mainImage', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

class _$GAllFeedData_feedItems_video extends GAllFeedData_feedItems_video {
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

  factory _$GAllFeedData_feedItems_video(
          [void Function(GAllFeedData_feedItems_videoBuilder)? updates]) =>
      (new GAllFeedData_feedItems_videoBuilder()..update(updates)).build();

  _$GAllFeedData_feedItems_video._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GAllFeedData_feedItems_video', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GAllFeedData_feedItems_video', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GAllFeedData_feedItems_video', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GAllFeedData_feedItems_video', 'fileName');
  }

  @override
  GAllFeedData_feedItems_video rebuild(
          void Function(GAllFeedData_feedItems_videoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAllFeedData_feedItems_videoBuilder toBuilder() =>
      new GAllFeedData_feedItems_videoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAllFeedData_feedItems_video &&
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
    return (newBuiltValueToStringHelper('GAllFeedData_feedItems_video')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GAllFeedData_feedItems_videoBuilder
    implements
        Builder<GAllFeedData_feedItems_video,
            GAllFeedData_feedItems_videoBuilder> {
  _$GAllFeedData_feedItems_video? _$v;

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

  GAllFeedData_feedItems_videoBuilder() {
    GAllFeedData_feedItems_video._initializeBuilder(this);
  }

  GAllFeedData_feedItems_videoBuilder get _$this {
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
  void replace(GAllFeedData_feedItems_video other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAllFeedData_feedItems_video;
  }

  @override
  void update(void Function(GAllFeedData_feedItems_videoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAllFeedData_feedItems_video build() {
    final _$result = _$v ??
        new _$GAllFeedData_feedItems_video._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GAllFeedData_feedItems_video', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GAllFeedData_feedItems_video', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GAllFeedData_feedItems_video', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GAllFeedData_feedItems_video', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
