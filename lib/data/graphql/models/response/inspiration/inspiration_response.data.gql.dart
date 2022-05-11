// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i1;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i2;

part 'inspiration_response.data.gql.g.dart';

abstract class GInspirationResponse {
  String get G__typename;
  String get id;
  String? get title;
  GInspirationResponse_mainImage? get mainImage;
  GInspirationResponse_video? get video;
  Map<String, dynamic> toJson();
}

abstract class GInspirationResponse_mainImage implements _i1.GAssetResponse {
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  Map<String, dynamic> toJson();
}

abstract class GInspirationResponse_video implements _i1.GAssetResponse {
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  Map<String, dynamic> toJson();
}

abstract class GInspirationResponseData
    implements
        Built<GInspirationResponseData, GInspirationResponseDataBuilder>,
        GInspirationResponse {
  GInspirationResponseData._();

  factory GInspirationResponseData(
          [Function(GInspirationResponseDataBuilder b) updates]) =
      _$GInspirationResponseData;

  static void _initializeBuilder(GInspirationResponseDataBuilder b) =>
      b..G__typename = 'InspirationItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  GInspirationResponseData_mainImage? get mainImage;
  GInspirationResponseData_video? get video;
  static Serializer<GInspirationResponseData> get serializer =>
      _$gInspirationResponseDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GInspirationResponseData.serializer, this)
          as Map<String, dynamic>);
  static GInspirationResponseData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GInspirationResponseData.serializer, json);
}

abstract class GInspirationResponseData_mainImage
    implements
        Built<GInspirationResponseData_mainImage,
            GInspirationResponseData_mainImageBuilder>,
        GInspirationResponse_mainImage,
        _i1.GAssetResponse {
  GInspirationResponseData_mainImage._();

  factory GInspirationResponseData_mainImage(
          [Function(GInspirationResponseData_mainImageBuilder b) updates]) =
      _$GInspirationResponseData_mainImage;

  static void _initializeBuilder(GInspirationResponseData_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GInspirationResponseData_mainImage> get serializer =>
      _$gInspirationResponseDataMainImageSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GInspirationResponseData_mainImage.serializer, this)
      as Map<String, dynamic>);
  static GInspirationResponseData_mainImage? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GInspirationResponseData_mainImage.serializer, json);
}

abstract class GInspirationResponseData_video
    implements
        Built<GInspirationResponseData_video,
            GInspirationResponseData_videoBuilder>,
        GInspirationResponse_video,
        _i1.GAssetResponse {
  GInspirationResponseData_video._();

  factory GInspirationResponseData_video(
          [Function(GInspirationResponseData_videoBuilder b) updates]) =
      _$GInspirationResponseData_video;

  static void _initializeBuilder(GInspirationResponseData_videoBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GInspirationResponseData_video> get serializer =>
      _$gInspirationResponseDataVideoSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GInspirationResponseData_video.serializer, this) as Map<String, dynamic>);
  static GInspirationResponseData_video? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GInspirationResponseData_video.serializer, json);
}
