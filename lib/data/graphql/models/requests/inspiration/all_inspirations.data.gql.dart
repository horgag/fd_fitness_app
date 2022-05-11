// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'all_inspirations.data.gql.g.dart';

abstract class GAllInspirationsData
    implements Built<GAllInspirationsData, GAllInspirationsDataBuilder> {
  GAllInspirationsData._();

  factory GAllInspirationsData(
          [Function(GAllInspirationsDataBuilder b) updates]) =
      _$GAllInspirationsData;

  static void _initializeBuilder(GAllInspirationsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAllInspirationsData_inspirationItems> get inspirationItems;
  static Serializer<GAllInspirationsData> get serializer =>
      _$gAllInspirationsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAllInspirationsData.serializer, this)
          as Map<String, dynamic>);
  static GAllInspirationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAllInspirationsData.serializer, json);
}

abstract class GAllInspirationsData_inspirationItems
    implements
        Built<GAllInspirationsData_inspirationItems,
            GAllInspirationsData_inspirationItemsBuilder>,
        _i2.GInspirationResponse {
  GAllInspirationsData_inspirationItems._();

  factory GAllInspirationsData_inspirationItems(
          [Function(GAllInspirationsData_inspirationItemsBuilder b) updates]) =
      _$GAllInspirationsData_inspirationItems;

  static void _initializeBuilder(
          GAllInspirationsData_inspirationItemsBuilder b) =>
      b..G__typename = 'InspirationItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  GAllInspirationsData_inspirationItems_mainImage? get mainImage;
  GAllInspirationsData_inspirationItems_video? get video;
  static Serializer<GAllInspirationsData_inspirationItems> get serializer =>
      _$gAllInspirationsDataInspirationItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAllInspirationsData_inspirationItems.serializer, this)
      as Map<String, dynamic>);
  static GAllInspirationsData_inspirationItems? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAllInspirationsData_inspirationItems.serializer, json);
}

abstract class GAllInspirationsData_inspirationItems_mainImage
    implements
        Built<GAllInspirationsData_inspirationItems_mainImage,
            GAllInspirationsData_inspirationItems_mainImageBuilder>,
        _i2.GInspirationResponse_mainImage,
        _i3.GAssetResponse {
  GAllInspirationsData_inspirationItems_mainImage._();

  factory GAllInspirationsData_inspirationItems_mainImage(
      [Function(GAllInspirationsData_inspirationItems_mainImageBuilder b)
          updates]) = _$GAllInspirationsData_inspirationItems_mainImage;

  static void _initializeBuilder(
          GAllInspirationsData_inspirationItems_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GAllInspirationsData_inspirationItems_mainImage>
      get serializer =>
          _$gAllInspirationsDataInspirationItemsMainImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAllInspirationsData_inspirationItems_mainImage.serializer, this)
      as Map<String, dynamic>);
  static GAllInspirationsData_inspirationItems_mainImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAllInspirationsData_inspirationItems_mainImage.serializer, json);
}

abstract class GAllInspirationsData_inspirationItems_video
    implements
        Built<GAllInspirationsData_inspirationItems_video,
            GAllInspirationsData_inspirationItems_videoBuilder>,
        _i2.GInspirationResponse_video,
        _i3.GAssetResponse {
  GAllInspirationsData_inspirationItems_video._();

  factory GAllInspirationsData_inspirationItems_video(
      [Function(GAllInspirationsData_inspirationItems_videoBuilder b)
          updates]) = _$GAllInspirationsData_inspirationItems_video;

  static void _initializeBuilder(
          GAllInspirationsData_inspirationItems_videoBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GAllInspirationsData_inspirationItems_video>
      get serializer => _$gAllInspirationsDataInspirationItemsVideoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAllInspirationsData_inspirationItems_video.serializer, this)
      as Map<String, dynamic>);
  static GAllInspirationsData_inspirationItems_video? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAllInspirationsData_inspirationItems_video.serializer, json);
}
