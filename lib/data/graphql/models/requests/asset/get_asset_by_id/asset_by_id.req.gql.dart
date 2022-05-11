// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.ast.gql.dart'
    as _i5;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'asset_by_id.req.gql.g.dart';

abstract class GGetAssetByIdReq
    implements
        Built<GGetAssetByIdReq, GGetAssetByIdReqBuilder>,
        _i1.OperationRequest<_i2.GGetAssetByIdData, _i3.GGetAssetByIdVars> {
  GGetAssetByIdReq._();

  factory GGetAssetByIdReq([Function(GGetAssetByIdReqBuilder b) updates]) =
      _$GGetAssetByIdReq;

  static void _initializeBuilder(GGetAssetByIdReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetAssetById')
    ..executeOnListen = true;
  _i3.GGetAssetByIdVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetAssetByIdData? Function(
      _i2.GGetAssetByIdData?, _i2.GGetAssetByIdData?)? get updateResult;
  _i2.GGetAssetByIdData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetAssetByIdData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAssetByIdData.fromJson(json);
  static Serializer<GGetAssetByIdReq> get serializer =>
      _$gGetAssetByIdReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetAssetByIdReq.serializer, this)
          as Map<String, dynamic>);
  static GGetAssetByIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetAssetByIdReq.serializer, json);
}
