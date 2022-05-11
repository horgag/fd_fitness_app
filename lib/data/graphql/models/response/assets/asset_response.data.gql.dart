// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'asset_response.data.gql.g.dart';

abstract class GAssetResponse {
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  Map<String, dynamic> toJson();
}

abstract class GAssetResponseData
    implements
        Built<GAssetResponseData, GAssetResponseDataBuilder>,
        GAssetResponse {
  GAssetResponseData._();

  factory GAssetResponseData([Function(GAssetResponseDataBuilder b) updates]) =
      _$GAssetResponseData;

  static void _initializeBuilder(GAssetResponseDataBuilder b) =>
      b..G__typename = 'Asset';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  double? get size;
  String get url;
  String get fileName;
  String? get mimeType;
  static Serializer<GAssetResponseData> get serializer =>
      _$gAssetResponseDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetResponseData.serializer, this)
          as Map<String, dynamic>);
  static GAssetResponseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetResponseData.serializer, json);
}
