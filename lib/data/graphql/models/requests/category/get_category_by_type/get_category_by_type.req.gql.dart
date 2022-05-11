// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.ast.gql.dart'
    as _i5;
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_category_by_type.req.gql.g.dart';

abstract class GGetCategoryByTypeReq
    implements
        Built<GGetCategoryByTypeReq, GGetCategoryByTypeReqBuilder>,
        _i1.OperationRequest<_i2.GGetCategoryByTypeData,
            _i3.GGetCategoryByTypeVars> {
  GGetCategoryByTypeReq._();

  factory GGetCategoryByTypeReq(
          [Function(GGetCategoryByTypeReqBuilder b) updates]) =
      _$GGetCategoryByTypeReq;

  static void _initializeBuilder(GGetCategoryByTypeReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetCategoryByType')
    ..executeOnListen = true;
  _i3.GGetCategoryByTypeVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetCategoryByTypeData? Function(
          _i2.GGetCategoryByTypeData?, _i2.GGetCategoryByTypeData?)?
      get updateResult;
  _i2.GGetCategoryByTypeData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetCategoryByTypeData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCategoryByTypeData.fromJson(json);
  static Serializer<GGetCategoryByTypeReq> get serializer =>
      _$gGetCategoryByTypeReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetCategoryByTypeReq.serializer, this)
          as Map<String, dynamic>);
  static GGetCategoryByTypeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetCategoryByTypeReq.serializer, json);
}
