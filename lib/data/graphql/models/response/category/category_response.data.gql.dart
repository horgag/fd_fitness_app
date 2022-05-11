// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/schema/schema.schema.gql.dart'
    as _i1;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i3;

part 'category_response.data.gql.g.dart';

abstract class GCategoryFeed {
  String get G__typename;
  String get id;
  String? get title;
  _i1.GCategoryTitle? get categoryTitle;
  GCategoryFeed_mainImage? get mainImage;
  Map<String, dynamic> toJson();
}

abstract class GCategoryFeed_mainImage implements _i2.GAssetResponse {
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  Map<String, dynamic> toJson();
}

abstract class GCategoryFeedData
    implements
        Built<GCategoryFeedData, GCategoryFeedDataBuilder>,
        GCategoryFeed {
  GCategoryFeedData._();

  factory GCategoryFeedData([Function(GCategoryFeedDataBuilder b) updates]) =
      _$GCategoryFeedData;

  static void _initializeBuilder(GCategoryFeedDataBuilder b) =>
      b..G__typename = 'Category';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  _i1.GCategoryTitle? get categoryTitle;
  GCategoryFeedData_mainImage? get mainImage;
  static Serializer<GCategoryFeedData> get serializer =>
      _$gCategoryFeedDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i3.serializers.serializeWith(GCategoryFeedData.serializer, this)
          as Map<String, dynamic>);
  static GCategoryFeedData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(GCategoryFeedData.serializer, json);
}

abstract class GCategoryFeedData_mainImage
    implements
        Built<GCategoryFeedData_mainImage, GCategoryFeedData_mainImageBuilder>,
        GCategoryFeed_mainImage,
        _i2.GAssetResponse {
  GCategoryFeedData_mainImage._();

  factory GCategoryFeedData_mainImage(
          [Function(GCategoryFeedData_mainImageBuilder b) updates]) =
      _$GCategoryFeedData_mainImage;

  static void _initializeBuilder(GCategoryFeedData_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GCategoryFeedData_mainImage> get serializer =>
      _$gCategoryFeedDataMainImageSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
      GCategoryFeedData_mainImage.serializer, this) as Map<String, dynamic>);
  static GCategoryFeedData_mainImage? fromJson(Map<String, dynamic> json) =>
      _i3.serializers
          .deserializeWith(GCategoryFeedData_mainImage.serializer, json);
}
