// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'get_feed_by_category_id.data.gql.g.dart';

abstract class GFeedByCategoryIdData
    implements Built<GFeedByCategoryIdData, GFeedByCategoryIdDataBuilder> {
  GFeedByCategoryIdData._();

  factory GFeedByCategoryIdData(
          [Function(GFeedByCategoryIdDataBuilder b) updates]) =
      _$GFeedByCategoryIdData;

  static void _initializeBuilder(GFeedByCategoryIdDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFeedByCategoryIdData_feedItems> get feedItems;
  static Serializer<GFeedByCategoryIdData> get serializer =>
      _$gFeedByCategoryIdDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedByCategoryIdData.serializer, this)
          as Map<String, dynamic>);
  static GFeedByCategoryIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedByCategoryIdData.serializer, json);
}

abstract class GFeedByCategoryIdData_feedItems
    implements
        Built<GFeedByCategoryIdData_feedItems,
            GFeedByCategoryIdData_feedItemsBuilder>,
        _i2.GFeedResponse {
  GFeedByCategoryIdData_feedItems._();

  factory GFeedByCategoryIdData_feedItems(
          [Function(GFeedByCategoryIdData_feedItemsBuilder b) updates]) =
      _$GFeedByCategoryIdData_feedItems;

  static void _initializeBuilder(GFeedByCategoryIdData_feedItemsBuilder b) =>
      b..G__typename = 'FeedItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  String? get subtitle;
  String? get mainContent;
  String? get description;
  GFeedByCategoryIdData_feedItems_mainImage? get mainImage;
  GFeedByCategoryIdData_feedItems_video? get video;
  static Serializer<GFeedByCategoryIdData_feedItems> get serializer =>
      _$gFeedByCategoryIdDataFeedItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedByCategoryIdData_feedItems.serializer, this)
      as Map<String, dynamic>);
  static GFeedByCategoryIdData_feedItems? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedByCategoryIdData_feedItems.serializer, json);
}

abstract class GFeedByCategoryIdData_feedItems_mainImage
    implements
        Built<GFeedByCategoryIdData_feedItems_mainImage,
            GFeedByCategoryIdData_feedItems_mainImageBuilder>,
        _i2.GFeedResponse_mainImage,
        _i3.GAssetResponse {
  GFeedByCategoryIdData_feedItems_mainImage._();

  factory GFeedByCategoryIdData_feedItems_mainImage(
      [Function(GFeedByCategoryIdData_feedItems_mainImageBuilder b)
          updates]) = _$GFeedByCategoryIdData_feedItems_mainImage;

  static void _initializeBuilder(
          GFeedByCategoryIdData_feedItems_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GFeedByCategoryIdData_feedItems_mainImage> get serializer =>
      _$gFeedByCategoryIdDataFeedItemsMainImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedByCategoryIdData_feedItems_mainImage.serializer, this)
      as Map<String, dynamic>);
  static GFeedByCategoryIdData_feedItems_mainImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedByCategoryIdData_feedItems_mainImage.serializer, json);
}

abstract class GFeedByCategoryIdData_feedItems_video
    implements
        Built<GFeedByCategoryIdData_feedItems_video,
            GFeedByCategoryIdData_feedItems_videoBuilder>,
        _i2.GFeedResponse_video,
        _i3.GAssetResponse {
  GFeedByCategoryIdData_feedItems_video._();

  factory GFeedByCategoryIdData_feedItems_video(
          [Function(GFeedByCategoryIdData_feedItems_videoBuilder b) updates]) =
      _$GFeedByCategoryIdData_feedItems_video;

  static void _initializeBuilder(
          GFeedByCategoryIdData_feedItems_videoBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GFeedByCategoryIdData_feedItems_video> get serializer =>
      _$gFeedByCategoryIdDataFeedItemsVideoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedByCategoryIdData_feedItems_video.serializer, this)
      as Map<String, dynamic>);
  static GFeedByCategoryIdData_feedItems_video? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedByCategoryIdData_feedItems_video.serializer, json);
}
