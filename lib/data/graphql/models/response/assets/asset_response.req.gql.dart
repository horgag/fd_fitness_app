// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.ast.gql.dart'
    as _i4;
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;

part 'asset_response.req.gql.g.dart';

abstract class GAssetResponseReq
    implements
        Built<GAssetResponseReq, GAssetResponseReqBuilder>,
        _i1.FragmentRequest<_i2.GAssetResponseData, _i3.GAssetResponseVars> {
  GAssetResponseReq._();

  factory GAssetResponseReq([Function(GAssetResponseReqBuilder b) updates]) =
      _$GAssetResponseReq;

  static void _initializeBuilder(GAssetResponseReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'AssetResponse';
  _i3.GAssetResponseVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GAssetResponseData? parseData(Map<String, dynamic> json) =>
      _i2.GAssetResponseData.fromJson(json);
  static Serializer<GAssetResponseReq> get serializer =>
      _$gAssetResponseReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAssetResponseReq.serializer, this)
          as Map<String, dynamic>);
  static GAssetResponseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAssetResponseReq.serializer, json);
}
