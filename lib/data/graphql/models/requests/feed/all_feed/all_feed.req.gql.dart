// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.ast.gql.dart'
    as _i5;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'all_feed.req.gql.g.dart';

abstract class GAllFeedReq
    implements
        Built<GAllFeedReq, GAllFeedReqBuilder>,
        _i1.OperationRequest<_i2.GAllFeedData, _i3.GAllFeedVars> {
  GAllFeedReq._();

  factory GAllFeedReq([Function(GAllFeedReqBuilder b) updates]) = _$GAllFeedReq;

  static void _initializeBuilder(GAllFeedReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AllFeed')
    ..executeOnListen = true;
  _i3.GAllFeedVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAllFeedData? Function(_i2.GAllFeedData?, _i2.GAllFeedData?)?
      get updateResult;
  _i2.GAllFeedData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAllFeedData? parseData(Map<String, dynamic> json) =>
      _i2.GAllFeedData.fromJson(json);
  static Serializer<GAllFeedReq> get serializer => _$gAllFeedReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAllFeedReq.serializer, this)
          as Map<String, dynamic>);
  static GAllFeedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAllFeedReq.serializer, json);
}
