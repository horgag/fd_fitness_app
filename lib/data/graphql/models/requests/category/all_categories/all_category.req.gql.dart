// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.ast.gql.dart'
    as _i5;
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'all_category.req.gql.g.dart';

abstract class GAllCategoriesReq
    implements
        Built<GAllCategoriesReq, GAllCategoriesReqBuilder>,
        _i1.OperationRequest<_i2.GAllCategoriesData, _i3.GAllCategoriesVars> {
  GAllCategoriesReq._();

  factory GAllCategoriesReq([Function(GAllCategoriesReqBuilder b) updates]) =
      _$GAllCategoriesReq;

  static void _initializeBuilder(GAllCategoriesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AllCategories')
    ..executeOnListen = true;
  _i3.GAllCategoriesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAllCategoriesData? Function(
      _i2.GAllCategoriesData?, _i2.GAllCategoriesData?)? get updateResult;
  _i2.GAllCategoriesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAllCategoriesData? parseData(Map<String, dynamic> json) =>
      _i2.GAllCategoriesData.fromJson(json);
  static Serializer<GAllCategoriesReq> get serializer =>
      _$gAllCategoriesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAllCategoriesReq.serializer, this)
          as Map<String, dynamic>);
  static GAllCategoriesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAllCategoriesReq.serializer, json);
}
