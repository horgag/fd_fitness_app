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

part 'all_category.data.gql.g.dart';

abstract class GAllCategoriesData
    implements Built<GAllCategoriesData, GAllCategoriesDataBuilder> {
  GAllCategoriesData._();

  factory GAllCategoriesData([Function(GAllCategoriesDataBuilder b) updates]) =
      _$GAllCategoriesData;

  static void _initializeBuilder(GAllCategoriesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAllCategoriesData_categories> get categories;
  static Serializer<GAllCategoriesData> get serializer =>
      _$gAllCategoriesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAllCategoriesData.serializer, this)
          as Map<String, dynamic>);
  static GAllCategoriesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAllCategoriesData.serializer, json);
}

abstract class GAllCategoriesData_categories
    implements
        Built<GAllCategoriesData_categories,
            GAllCategoriesData_categoriesBuilder>,
        _i2.GCategoryFeed {
  GAllCategoriesData_categories._();

  factory GAllCategoriesData_categories(
          [Function(GAllCategoriesData_categoriesBuilder b) updates]) =
      _$GAllCategoriesData_categories;

  static void _initializeBuilder(GAllCategoriesData_categoriesBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  _i3.GCategoryTitle? get categoryTitle;
  GAllCategoriesData_categories_mainImage? get mainImage;
  static Serializer<GAllCategoriesData_categories> get serializer =>
      _$gAllCategoriesDataCategoriesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAllCategoriesData_categories.serializer, this) as Map<String, dynamic>);
  static GAllCategoriesData_categories? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAllCategoriesData_categories.serializer, json);
}

abstract class GAllCategoriesData_categories_mainImage
    implements
        Built<GAllCategoriesData_categories_mainImage,
            GAllCategoriesData_categories_mainImageBuilder>,
        _i2.GCategoryFeed_mainImage,
        _i4.GAssetResponse {
  GAllCategoriesData_categories_mainImage._();

  factory GAllCategoriesData_categories_mainImage(
      [Function(GAllCategoriesData_categories_mainImageBuilder b)
          updates]) = _$GAllCategoriesData_categories_mainImage;

  static void _initializeBuilder(
          GAllCategoriesData_categories_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GAllCategoriesData_categories_mainImage> get serializer =>
      _$gAllCategoriesDataCategoriesMainImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAllCategoriesData_categories_mainImage.serializer, this)
      as Map<String, dynamic>);
  static GAllCategoriesData_categories_mainImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAllCategoriesData_categories_mainImage.serializer, json);
}
