// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.ast.gql.dart'
    as _i5;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;

part 'get_feed_by_category_id.req.gql.g.dart';

abstract class GFeedByCategoryIdReq
    implements
        Built<GFeedByCategoryIdReq, GFeedByCategoryIdReqBuilder>,
        _i1.OperationRequest<_i2.GFeedByCategoryIdData,
            _i3.GFeedByCategoryIdVars> {
  GFeedByCategoryIdReq._();

  factory GFeedByCategoryIdReq(
          [Function(GFeedByCategoryIdReqBuilder b) updates]) =
      _$GFeedByCategoryIdReq;

  static void _initializeBuilder(GFeedByCategoryIdReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FeedByCategoryId')
    ..executeOnListen = true;
  _i3.GFeedByCategoryIdVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFeedByCategoryIdData? Function(
      _i2.GFeedByCategoryIdData?, _i2.GFeedByCategoryIdData?)? get updateResult;
  _i2.GFeedByCategoryIdData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFeedByCategoryIdData? parseData(Map<String, dynamic> json) =>
      _i2.GFeedByCategoryIdData.fromJson(json);
  static Serializer<GFeedByCategoryIdReq> get serializer =>
      _$gFeedByCategoryIdReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFeedByCategoryIdReq.serializer, this)
          as Map<String, dynamic>);
  static GFeedByCategoryIdReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFeedByCategoryIdReq.serializer, json);
}
