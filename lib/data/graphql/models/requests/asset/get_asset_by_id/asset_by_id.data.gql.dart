// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'asset_by_id.data.gql.g.dart';

abstract class GGetAssetByIdData
    implements Built<GGetAssetByIdData, GGetAssetByIdDataBuilder> {
  GGetAssetByIdData._();

  factory GGetAssetByIdData([Function(GGetAssetByIdDataBuilder b) updates]) =
      _$GGetAssetByIdData;

  static void _initializeBuilder(GGetAssetByIdDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAssetByIdData_assets> get assets;
  static Serializer<GGetAssetByIdData> get serializer =>
      _$gGetAssetByIdDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAssetByIdData.serializer, this)
          as Map<String, dynamic>);
  static GGetAssetByIdData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAssetByIdData.serializer, json);
}

abstract class GGetAssetByIdData_assets
    implements
        Built<GGetAssetByIdData_assets, GGetAssetByIdData_assetsBuilder>,
        _i2.GAssetResponse {
  GGetAssetByIdData_assets._();

  factory GGetAssetByIdData_assets(
          [Function(GGetAssetByIdData_assetsBuilder b) updates]) =
      _$GGetAssetByIdData_assets;

  static void _initializeBuilder(GGetAssetByIdData_assetsBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GGetAssetByIdData_assets> get serializer =>
      _$gGetAssetByIdDataAssetsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAssetByIdData_assets.serializer, this)
          as Map<String, dynamic>);
  static GGetAssetByIdData_assets? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAssetByIdData_assets.serializer, json);
}
