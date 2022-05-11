// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.ast.gql.dart'
    as _i5;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'asset_by_name.req.gql.g.dart';

abstract class GGetAssetByFileNameReq
    implements
        Built<GGetAssetByFileNameReq, GGetAssetByFileNameReqBuilder>,
        _i1.OperationRequest<_i2.GGetAssetByFileNameData,
            _i3.GGetAssetByFileNameVars> {
  GGetAssetByFileNameReq._();

  factory GGetAssetByFileNameReq(
          [Function(GGetAssetByFileNameReqBuilder b) updates]) =
      _$GGetAssetByFileNameReq;

  static void _initializeBuilder(GGetAssetByFileNameReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetAssetByFileName')
    ..executeOnListen = true;
  _i3.GGetAssetByFileNameVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetAssetByFileNameData? Function(
          _i2.GGetAssetByFileNameData?, _i2.GGetAssetByFileNameData?)?
      get updateResult;
  _i2.GGetAssetByFileNameData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetAssetByFileNameData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAssetByFileNameData.fromJson(json);
  static Serializer<GGetAssetByFileNameReq> get serializer =>
      _$gGetAssetByFileNameReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetAssetByFileNameReq.serializer, this)
          as Map<String, dynamic>);
  static GGetAssetByFileNameReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetAssetByFileNameReq.serializer, json);
}
