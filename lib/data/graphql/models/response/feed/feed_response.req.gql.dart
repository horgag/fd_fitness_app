// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.ast.gql.dart'
    as _i4;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;

part 'feed_response.req.gql.g.dart';

abstract class GFeedResponseReq
    implements
        Built<GFeedResponseReq, GFeedResponseReqBuilder>,
        _i1.FragmentRequest<_i2.GFeedResponseData, _i3.GFeedResponseVars> {
  GFeedResponseReq._();

  factory GFeedResponseReq([Function(GFeedResponseReqBuilder b) updates]) =
      _$GFeedResponseReq;

  static void _initializeBuilder(GFeedResponseReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'FeedResponse';
  _i3.GFeedResponseVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GFeedResponseData? parseData(Map<String, dynamic> json) =>
      _i2.GFeedResponseData.fromJson(json);
  static Serializer<GFeedResponseReq> get serializer =>
      _$gFeedResponseReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFeedResponseReq.serializer, this)
          as Map<String, dynamic>);
  static GFeedResponseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFeedResponseReq.serializer, json);
}
