// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'all_feed.data.gql.g.dart';

abstract class GAllFeedData
    implements Built<GAllFeedData, GAllFeedDataBuilder> {
  GAllFeedData._();

  factory GAllFeedData([Function(GAllFeedDataBuilder b) updates]) =
      _$GAllFeedData;

  static void _initializeBuilder(GAllFeedDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GAllFeedData_feedItems> get feedItems;
  static Serializer<GAllFeedData> get serializer => _$gAllFeedDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAllFeedData.serializer, this)
          as Map<String, dynamic>);
  static GAllFeedData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAllFeedData.serializer, json);
}

abstract class GAllFeedData_feedItems
    implements
        Built<GAllFeedData_feedItems, GAllFeedData_feedItemsBuilder>,
        _i2.GFeedResponse {
  GAllFeedData_feedItems._();

  factory GAllFeedData_feedItems(
          [Function(GAllFeedData_feedItemsBuilder b) updates]) =
      _$GAllFeedData_feedItems;

  static void _initializeBuilder(GAllFeedData_feedItemsBuilder b) =>
      b..G__typename = 'FeedItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get title;
  String? get subtitle;
  String? get mainContent;
  String? get description;
  GAllFeedData_feedItems_mainImage? get mainImage;
  GAllFeedData_feedItems_video? get video;
  static Serializer<GAllFeedData_feedItems> get serializer =>
      _$gAllFeedDataFeedItemsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAllFeedData_feedItems.serializer, this)
          as Map<String, dynamic>);
  static GAllFeedData_feedItems? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAllFeedData_feedItems.serializer, json);
}

abstract class GAllFeedData_feedItems_mainImage
    implements
        Built<GAllFeedData_feedItems_mainImage,
            GAllFeedData_feedItems_mainImageBuilder>,
        _i2.GFeedResponse_mainImage,
        _i3.GAssetResponse {
  GAllFeedData_feedItems_mainImage._();

  factory GAllFeedData_feedItems_mainImage(
          [Function(GAllFeedData_feedItems_mainImageBuilder b) updates]) =
      _$GAllFeedData_feedItems_mainImage;

  static void _initializeBuilder(GAllFeedData_feedItems_mainImageBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GAllFeedData_feedItems_mainImage> get serializer =>
      _$gAllFeedDataFeedItemsMainImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAllFeedData_feedItems_mainImage.serializer, this)
      as Map<String, dynamic>);
  static GAllFeedData_feedItems_mainImage? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAllFeedData_feedItems_mainImage.serializer, json);
}

abstract class GAllFeedData_feedItems_video
    implements
        Built<GAllFeedData_feedItems_video,
            GAllFeedData_feedItems_videoBuilder>,
        _i2.GFeedResponse_video,
        _i3.GAssetResponse {
  GAllFeedData_feedItems_video._();

  factory GAllFeedData_feedItems_video(
          [Function(GAllFeedData_feedItems_videoBuilder b) updates]) =
      _$GAllFeedData_feedItems_video;

  static void _initializeBuilder(GAllFeedData_feedItems_videoBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GAllFeedData_feedItems_video> get serializer =>
      _$gAllFeedDataFeedItemsVideoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAllFeedData_feedItems_video.serializer, this) as Map<String, dynamic>);
  static GAllFeedData_feedItems_video? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAllFeedData_feedItems_video.serializer, json);
}
