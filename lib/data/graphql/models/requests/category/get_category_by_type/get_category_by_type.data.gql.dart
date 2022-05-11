// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i4;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/schema/schema.schema.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'get_category_by_type.data.gql.g.dart';

abstract class GGetCategoryByTypeData
    implements Built<GGetCategoryByTypeData, GGetCategoryByTypeDataBuilder> {
  GGetCategoryByTypeData._();

  factory GGetCategoryByTypeData(
          [Function(GGetCategoryByTypeDataBuilder b) updates]) =
      _$GGetCategoryByTypeData;

  static void _initializeBuilder(GGetCategoryByTypeDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetCategoryByTypeData_categories> get categories;
  static Serializer<GGetCategoryByTypeData> get serializer =>
      _$gGetCategoryByTypeDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCategoryByTypeData.serializer, this)
          as Map<String, dynamic>);
  static GGetCategoryByTypeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCategoryByTypeData.serializer, json);
}

abstract class GGetCategoryByTypeData_categories
    implements
        Built<GGetCategoryByTypeData_categories,
            GGetCategoryByTypeData_categoriesBuilder>,
        _i2.GCategoryFeed {
  GGetCategoryByTypeData_categories._();

  factory GGetCategoryByTypeData_categories(
          [Function(GGetCategoryByTypeData_categoriesBuilder b) updates]) =
      _$GGetCategoryByTypeData_categories;

  static void _initializeBuilder(GGetCategoryByTypeData_categoriesBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  _i3.GCategoryTitle? get categoryTitle;
  GGetCategoryByTypeData_categories_mainImage? get mainImage;
  static Serializer<GGetCategoryByTypeData_categories> get serializer =>
      _$gGetCategoryByTypeDataCategoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetCategoryByTypeData_categories.serializer, this)
      as Map<String, dynamic>);
  static GGetCategoryByTypeData_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetCategoryByTypeData_categories.serializer, json);
}

abstract class GGetCategoryByTypeData_categories_mainImage
    implements
        Built<GGetCategoryByTypeData_categories_mainImage,
            GGetCategoryByTypeData_categories_mainImageBuilder>,
        _i2.GCategoryFeed_mainImage,
        _i4.GAssetResponse {
  GGetCategoryByTypeData_categories_mainImage._();

  factory GGetCategoryByTypeData_categories_mainImage(
      [Function(GGetCategoryByTypeData_categories_mainImageBuilder b)
          updates]) = _$GGetCategoryByTypeData_categories_mainImage;

  static void _initializeBuilder(
          GGetCategoryByTypeData_categories_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GGetCategoryByTypeData_categories_mainImage>
      get serializer => _$gGetCategoryByTypeDataCategoriesMainImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCategoryByTypeData_categories_mainImage.serializer, this)
      as Map<String, dynamic>);
  static GGetCategoryByTypeData_categories_mainImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCategoryByTypeData_categories_mainImage.serializer, json);
}
