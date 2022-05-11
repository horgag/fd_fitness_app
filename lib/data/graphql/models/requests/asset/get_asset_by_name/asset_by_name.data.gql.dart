// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'asset_by_name.data.gql.g.dart';

abstract class GGetAssetByFileNameData
    implements Built<GGetAssetByFileNameData, GGetAssetByFileNameDataBuilder> {
  GGetAssetByFileNameData._();

  factory GGetAssetByFileNameData(
          [Function(GGetAssetByFileNameDataBuilder b) updates]) =
      _$GGetAssetByFileNameData;

  static void _initializeBuilder(GGetAssetByFileNameDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAssetByFileNameData_assets> get assets;
  static Serializer<GGetAssetByFileNameData> get serializer =>
      _$gGetAssetByFileNameDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAssetByFileNameData.serializer, this)
          as Map<String, dynamic>);
  static GGetAssetByFileNameData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAssetByFileNameData.serializer, json);
}

abstract class GGetAssetByFileNameData_assets
    implements
        Built<GGetAssetByFileNameData_assets,
            GGetAssetByFileNameData_assetsBuilder>,
        _i2.GAssetResponse {
  GGetAssetByFileNameData_assets._();

  factory GGetAssetByFileNameData_assets(
          [Function(GGetAssetByFileNameData_assetsBuilder b) updates]) =
      _$GGetAssetByFileNameData_assets;

  static void _initializeBuilder(GGetAssetByFileNameData_assetsBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GGetAssetByFileNameData_assets> get serializer =>
      _$gGetAssetByFileNameDataAssetsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetAssetByFileNameData_assets.serializer, this) as Map<String, dynamic>);
  static GGetAssetByFileNameData_assets? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAssetByFileNameData_assets.serializer, json);
}
