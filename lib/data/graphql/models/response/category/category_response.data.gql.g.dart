// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCategoryFeedData> _$gCategoryFeedDataSerializer =
    new _$GCategoryFeedDataSerializer();
Serializer<GCategoryFeedData_mainImage> _$gCategoryFeedDataMainImageSerializer =
    new _$GCategoryFeedData_mainImageSerializer();

class _$GCategoryFeedDataSerializer
    implements StructuredSerializer<GCategoryFeedData> {
  @override
  final Iterable<Type> types = const [GCategoryFeedData, _$GCategoryFeedData];
  @override
  final String wireName = 'GCategoryFeedData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCategoryFeedData object,
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
    value = object.categoryTitle;
    if (value != null) {
      result
        ..add('categoryTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCategoryTitle)));
    }
    value = object.mainImage;
    if (value != null) {
      result
        ..add('mainImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCategoryFeedData_mainImage)));
    }
    return result;
  }

  @override
  GCategoryFeedData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCategoryFeedDataBuilder();

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
        case 'categoryTitle':
          result.categoryTitle = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCategoryTitle))
              as _i1.GCategoryTitle;
          break;
        case 'mainImage':
          result.mainImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCategoryFeedData_mainImage))!
              as GCategoryFeedData_mainImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GCategoryFeedData_mainImageSerializer
    implements StructuredSerializer<GCategoryFeedData_mainImage> {
  @override
  final Iterable<Type> types = const [
    GCategoryFeedData_mainImage,
    _$GCategoryFeedData_mainImage
  ];
  @override
  final String wireName = 'GCategoryFeedData_mainImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCategoryFeedData_mainImage object,
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
  GCategoryFeedData_mainImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCategoryFeedData_mainImageBuilder();

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

class _$GCategoryFeedData extends GCategoryFeedData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? title;
  @override
  final _i1.GCategoryTitle? categoryTitle;
  @override
  final GCategoryFeedData_mainImage? mainImage;

  factory _$GCategoryFeedData(
          [void Function(GCategoryFeedDataBuilder)? updates]) =>
      (new GCategoryFeedDataBuilder()..update(updates)).build();

  _$GCategoryFeedData._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.categoryTitle,
      this.mainImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCategoryFeedData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GCategoryFeedData', 'id');
  }

  @override
  GCategoryFeedData rebuild(void Function(GCategoryFeedDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoryFeedDataBuilder toBuilder() =>
      new GCategoryFeedDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoryFeedData &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        categoryTitle == other.categoryTitle &&
        mainImage == other.mainImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), title.hashCode),
            categoryTitle.hashCode),
        mainImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCategoryFeedData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('categoryTitle', categoryTitle)
          ..add('mainImage', mainImage))
        .toString();
  }
}

class GCategoryFeedDataBuilder
    implements Builder<GCategoryFeedData, GCategoryFeedDataBuilder> {
  _$GCategoryFeedData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i1.GCategoryTitle? _categoryTitle;
  _i1.GCategoryTitle? get categoryTitle => _$this._categoryTitle;
  set categoryTitle(_i1.GCategoryTitle? categoryTitle) =>
      _$this._categoryTitle = categoryTitle;

  GCategoryFeedData_mainImageBuilder? _mainImage;
  GCategoryFeedData_mainImageBuilder get mainImage =>
      _$this._mainImage ??= new GCategoryFeedData_mainImageBuilder();
  set mainImage(GCategoryFeedData_mainImageBuilder? mainImage) =>
      _$this._mainImage = mainImage;

  GCategoryFeedDataBuilder() {
    GCategoryFeedData._initializeBuilder(this);
  }

  GCategoryFeedDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _categoryTitle = $v.categoryTitle;
      _mainImage = $v.mainImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCategoryFeedData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoryFeedData;
  }

  @override
  void update(void Function(GCategoryFeedDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCategoryFeedData build() {
    _$GCategoryFeedData _$result;
    try {
      _$result = _$v ??
          new _$GCategoryFeedData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCategoryFeedData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GCategoryFeedData', 'id'),
              title: title,
              categoryTitle: categoryTitle,
              mainImage: _mainImage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainImage';
        _mainImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCategoryFeedData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCategoryFeedData_mainImage extends GCategoryFeedData_mainImage {
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

  factory _$GCategoryFeedData_mainImage(
          [void Function(GCategoryFeedData_mainImageBuilder)? updates]) =>
      (new GCategoryFeedData_mainImageBuilder()..update(updates)).build();

  _$GCategoryFeedData_mainImage._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCategoryFeedData_mainImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCategoryFeedData_mainImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GCategoryFeedData_mainImage', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GCategoryFeedData_mainImage', 'fileName');
  }

  @override
  GCategoryFeedData_mainImage rebuild(
          void Function(GCategoryFeedData_mainImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCategoryFeedData_mainImageBuilder toBuilder() =>
      new GCategoryFeedData_mainImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCategoryFeedData_mainImage &&
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
    return (newBuiltValueToStringHelper('GCategoryFeedData_mainImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GCategoryFeedData_mainImageBuilder
    implements
        Builder<GCategoryFeedData_mainImage,
            GCategoryFeedData_mainImageBuilder> {
  _$GCategoryFeedData_mainImage? _$v;

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

  GCategoryFeedData_mainImageBuilder() {
    GCategoryFeedData_mainImage._initializeBuilder(this);
  }

  GCategoryFeedData_mainImageBuilder get _$this {
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
  void replace(GCategoryFeedData_mainImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCategoryFeedData_mainImage;
  }

  @override
  void update(void Function(GCategoryFeedData_mainImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCategoryFeedData_mainImage build() {
    final _$result = _$v ??
        new _$GCategoryFeedData_mainImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCategoryFeedData_mainImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCategoryFeedData_mainImage', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GCategoryFeedData_mainImage', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(
                fileName, 'GCategoryFeedData_mainImage', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
