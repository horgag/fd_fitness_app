// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i1;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i2;

part 'feed_response.data.gql.g.dart';

abstract class GFeedResponse {
  String get G__typename;
  String get id;
  String? get title;
  String? get subtitle;
  String? get mainContent;
  String? get description;
  GFeedResponse_mainImage? get mainImage;
  GFeedResponse_video? get video;
  Map<String, dynamic> toJson();
}

abstract class GFeedResponse_mainImage implements _i1.GAssetResponse {
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  Map<String, dynamic> toJson();
}

abstract class GFeedResponse_video implements _i1.GAssetResponse {
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  Map<String, dynamic> toJson();
}

abstract class GFeedResponseData
    implements
        Built<GFeedResponseData, GFeedResponseDataBuilder>,
        GFeedResponse {
  GFeedResponseData._();

  factory GFeedResponseData([Function(GFeedResponseDataBuilder b) updates]) =
      _$GFeedResponseData;

  static void _initializeBuilder(GFeedResponseDataBuilder b) =>
      b..G__typename = 'FeedItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  String? get subtitle;
  String? get mainContent;
  String? get description;
  GFeedResponseData_mainImage? get mainImage;
  GFeedResponseData_video? get video;
  static Serializer<GFeedResponseData> get serializer =>
      _$gFeedResponseDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GFeedResponseData.serializer, this)
          as Map<String, dynamic>);
  static GFeedResponseData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GFeedResponseData.serializer, json);
}

abstract class GFeedResponseData_mainImage
    implements
        Built<GFeedResponseData_mainImage, GFeedResponseData_mainImageBuilder>,
        GFeedResponse_mainImage,
        _i1.GAssetResponse {
  GFeedResponseData_mainImage._();

  factory GFeedResponseData_mainImage(
          [Function(GFeedResponseData_mainImageBuilder b) updates]) =
      _$GFeedResponseData_mainImage;

  static void _initializeBuilder(GFeedResponseData_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GFeedResponseData_mainImage> get serializer =>
      _$gFeedResponseDataMainImageSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GFeedResponseData_mainImage.serializer, this) as Map<String, dynamic>);
  static GFeedResponseData_mainImage? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GFeedResponseData_mainImage.serializer, json);
}

abstract class GFeedResponseData_video
    implements
        Built<GFeedResponseData_video, GFeedResponseData_videoBuilder>,
        GFeedResponse_video,
        _i1.GAssetResponse {
  GFeedResponseData_video._();

  factory GFeedResponseData_video(
          [Function(GFeedResponseData_videoBuilder b) updates]) =
      _$GFeedResponseData_video;

  static void _initializeBuilder(GFeedResponseData_videoBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GFeedResponseData_video> get serializer =>
      _$gFeedResponseDataVideoSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GFeedResponseData_video.serializer, this)
          as Map<String, dynamic>);
  static GFeedResponseData_video? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GFeedResponseData_video.serializer, json);
}
