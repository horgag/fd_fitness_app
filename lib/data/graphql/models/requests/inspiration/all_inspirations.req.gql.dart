// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.ast.gql.dart'
    as _i5;
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'all_inspirations.req.gql.g.dart';

abstract class GAllInspirationsReq
    implements
        Built<GAllInspirationsReq, GAllInspirationsReqBuilder>,
        _i1.OperationRequest<_i2.GAllInspirationsData,
            _i3.GAllInspirationsVars> {
  GAllInspirationsReq._();

  factory GAllInspirationsReq(
      [Function(GAllInspirationsReqBuilder b) updates]) = _$GAllInspirationsReq;

  static void _initializeBuilder(GAllInspirationsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AllInspirations')
    ..executeOnListen = true;
  _i3.GAllInspirationsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAllInspirationsData? Function(
      _i2.GAllInspirationsData?, _i2.GAllInspirationsData?)? get updateResult;
  _i2.GAllInspirationsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAllInspirationsData? parseData(Map<String, dynamic> json) =>
      _i2.GAllInspirationsData.fromJson(json);
  static Serializer<GAllInspirationsReq> get serializer =>
      _$gAllInspirationsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAllInspirationsReq.serializer, this)
          as Map<String, dynamic>);
  static GAllInspirationsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAllInspirationsReq.serializer, json);
}
