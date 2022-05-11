// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_category_by_type.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCategoryByTypeData> _$gGetCategoryByTypeDataSerializer =
    new _$GGetCategoryByTypeDataSerializer();
Serializer<GGetCategoryByTypeData_categories>
    _$gGetCategoryByTypeDataCategoriesSerializer =
    new _$GGetCategoryByTypeData_categoriesSerializer();
Serializer<GGetCategoryByTypeData_categories_mainImage>
    _$gGetCategoryByTypeDataCategoriesMainImageSerializer =
    new _$GGetCategoryByTypeData_categories_mainImageSerializer();

class _$GGetCategoryByTypeDataSerializer
    implements StructuredSerializer<GGetCategoryByTypeData> {
  @override
  final Iterable<Type> types = const [
    GGetCategoryByTypeData,
    _$GGetCategoryByTypeData
  ];
  @override
  final String wireName = 'GGetCategoryByTypeData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCategoryByTypeData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetCategoryByTypeData_categories)])),
    ];

    return result;
  }

  @override
  GGetCategoryByTypeData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoryByTypeDataBuilder();

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
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetCategoryByTypeData_categories)
              ]))! as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoryByTypeData_categoriesSerializer
    implements StructuredSerializer<GGetCategoryByTypeData_categories> {
  @override
  final Iterable<Type> types = const [
    GGetCategoryByTypeData_categories,
    _$GGetCategoryByTypeData_categories
  ];
  @override
  final String wireName = 'GGetCategoryByTypeData_categories';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCategoryByTypeData_categories object,
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
            specifiedType: const FullType(_i3.GCategoryTitle)));
    }
    value = object.mainImage;
    if (value != null) {
      result
        ..add('mainImage')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetCategoryByTypeData_categories_mainImage)));
    }
    return result;
  }

  @override
  GGetCategoryByTypeData_categories deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoryByTypeData_categoriesBuilder();

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
                  specifiedType: const FullType(_i3.GCategoryTitle))
              as _i3.GCategoryTitle;
          break;
        case 'mainImage':
          result.mainImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetCategoryByTypeData_categories_mainImage))!
              as GGetCategoryByTypeData_categories_mainImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCategoryByTypeData_categories_mainImageSerializer
    implements
        StructuredSerializer<GGetCategoryByTypeData_categories_mainImage> {
  @override
  final Iterable<Type> types = const [
    GGetCategoryByTypeData_categories_mainImage,
    _$GGetCategoryByTypeData_categories_mainImage
  ];
  @override
  final String wireName = 'GGetCategoryByTypeData_categories_mainImage';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetCategoryByTypeData_categories_mainImage object,
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
  GGetCategoryByTypeData_categories_mainImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCategoryByTypeData_categories_mainImageBuilder();

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

class _$GGetCategoryByTypeData extends GGetCategoryByTypeData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetCategoryByTypeData_categories> categories;

  factory _$GGetCategoryByTypeData(
          [void Function(GGetCategoryByTypeDataBuilder)? updates]) =>
      (new GGetCategoryByTypeDataBuilder()..update(updates)).build();

  _$GGetCategoryByTypeData._(
      {required this.G__typename, required this.categories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCategoryByTypeData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        categories, 'GGetCategoryByTypeData', 'categories');
  }

  @override
  GGetCategoryByTypeData rebuild(
          void Function(GGetCategoryByTypeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoryByTypeDataBuilder toBuilder() =>
      new GGetCategoryByTypeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoryByTypeData &&
        G__typename == other.G__typename &&
        categories == other.categories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), categories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCategoryByTypeData')
          ..add('G__typename', G__typename)
          ..add('categories', categories))
        .toString();
  }
}

class GGetCategoryByTypeDataBuilder
    implements Builder<GGetCategoryByTypeData, GGetCategoryByTypeDataBuilder> {
  _$GGetCategoryByTypeData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetCategoryByTypeData_categories>? _categories;
  ListBuilder<GGetCategoryByTypeData_categories> get categories =>
      _$this._categories ??=
          new ListBuilder<GGetCategoryByTypeData_categories>();
  set categories(ListBuilder<GGetCategoryByTypeData_categories>? categories) =>
      _$this._categories = categories;

  GGetCategoryByTypeDataBuilder() {
    GGetCategoryByTypeData._initializeBuilder(this);
  }

  GGetCategoryByTypeDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _categories = $v.categories.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCategoryByTypeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoryByTypeData;
  }

  @override
  void update(void Function(GGetCategoryByTypeDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoryByTypeData build() {
    _$GGetCategoryByTypeData _$result;
    try {
      _$result = _$v ??
          new _$GGetCategoryByTypeData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetCategoryByTypeData', 'G__typename'),
              categories: categories.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetCategoryByTypeData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCategoryByTypeData_categories
    extends GGetCategoryByTypeData_categories {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? title;
  @override
  final _i3.GCategoryTitle? categoryTitle;
  @override
  final GGetCategoryByTypeData_categories_mainImage? mainImage;

  factory _$GGetCategoryByTypeData_categories(
          [void Function(GGetCategoryByTypeData_categoriesBuilder)? updates]) =>
      (new GGetCategoryByTypeData_categoriesBuilder()..update(updates)).build();

  _$GGetCategoryByTypeData_categories._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.categoryTitle,
      this.mainImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCategoryByTypeData_categories', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCategoryByTypeData_categories', 'id');
  }

  @override
  GGetCategoryByTypeData_categories rebuild(
          void Function(GGetCategoryByTypeData_categoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoryByTypeData_categoriesBuilder toBuilder() =>
      new GGetCategoryByTypeData_categoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoryByTypeData_categories &&
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
    return (newBuiltValueToStringHelper('GGetCategoryByTypeData_categories')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('categoryTitle', categoryTitle)
          ..add('mainImage', mainImage))
        .toString();
  }
}

class GGetCategoryByTypeData_categoriesBuilder
    implements
        Builder<GGetCategoryByTypeData_categories,
            GGetCategoryByTypeData_categoriesBuilder> {
  _$GGetCategoryByTypeData_categories? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i3.GCategoryTitle? _categoryTitle;
  _i3.GCategoryTitle? get categoryTitle => _$this._categoryTitle;
  set categoryTitle(_i3.GCategoryTitle? categoryTitle) =>
      _$this._categoryTitle = categoryTitle;

  GGetCategoryByTypeData_categories_mainImageBuilder? _mainImage;
  GGetCategoryByTypeData_categories_mainImageBuilder get mainImage =>
      _$this._mainImage ??=
          new GGetCategoryByTypeData_categories_mainImageBuilder();
  set mainImage(
          GGetCategoryByTypeData_categories_mainImageBuilder? mainImage) =>
      _$this._mainImage = mainImage;

  GGetCategoryByTypeData_categoriesBuilder() {
    GGetCategoryByTypeData_categories._initializeBuilder(this);
  }

  GGetCategoryByTypeData_categoriesBuilder get _$this {
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
  void replace(GGetCategoryByTypeData_categories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoryByTypeData_categories;
  }

  @override
  void update(
      void Function(GGetCategoryByTypeData_categoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoryByTypeData_categories build() {
    _$GGetCategoryByTypeData_categories _$result;
    try {
      _$result = _$v ??
          new _$GGetCategoryByTypeData_categories._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetCategoryByTypeData_categories', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetCategoryByTypeData_categories', 'id'),
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
            'GGetCategoryByTypeData_categories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCategoryByTypeData_categories_mainImage
    extends GGetCategoryByTypeData_categories_mainImage {
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

  factory _$GGetCategoryByTypeData_categories_mainImage(
          [void Function(GGetCategoryByTypeData_categories_mainImageBuilder)?
              updates]) =>
      (new GGetCategoryByTypeData_categories_mainImageBuilder()
            ..update(updates))
          .build();

  _$GGetCategoryByTypeData_categories_mainImage._(
      {required this.G__typename,
      required this.id,
      this.size,
      required this.url,
      required this.fileName,
      this.mimeType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetCategoryByTypeData_categories_mainImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCategoryByTypeData_categories_mainImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GGetCategoryByTypeData_categories_mainImage', 'url');
    BuiltValueNullFieldError.checkNotNull(
        fileName, 'GGetCategoryByTypeData_categories_mainImage', 'fileName');
  }

  @override
  GGetCategoryByTypeData_categories_mainImage rebuild(
          void Function(GGetCategoryByTypeData_categories_mainImageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCategoryByTypeData_categories_mainImageBuilder toBuilder() =>
      new GGetCategoryByTypeData_categories_mainImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCategoryByTypeData_categories_mainImage &&
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
            'GGetCategoryByTypeData_categories_mainImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('url', url)
          ..add('fileName', fileName)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class GGetCategoryByTypeData_categories_mainImageBuilder
    implements
        Builder<GGetCategoryByTypeData_categories_mainImage,
            GGetCategoryByTypeData_categories_mainImageBuilder> {
  _$GGetCategoryByTypeData_categories_mainImage? _$v;

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

  GGetCategoryByTypeData_categories_mainImageBuilder() {
    GGetCategoryByTypeData_categories_mainImage._initializeBuilder(this);
  }

  GGetCategoryByTypeData_categories_mainImageBuilder get _$this {
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
  void replace(GGetCategoryByTypeData_categories_mainImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCategoryByTypeData_categories_mainImage;
  }

  @override
  void update(
      void Function(GGetCategoryByTypeData_categories_mainImageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCategoryByTypeData_categories_mainImage build() {
    final _$result = _$v ??
        new _$GGetCategoryByTypeData_categories_mainImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetCategoryByTypeData_categories_mainImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetCategoryByTypeData_categories_mainImage', 'id'),
            size: size,
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GGetCategoryByTypeData_categories_mainImage', 'url'),
            fileName: BuiltValueNullFieldError.checkNotNull(fileName,
                'GGetCategoryByTypeData_categories_mainImage', 'fileName'),
            mimeType: mimeType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
