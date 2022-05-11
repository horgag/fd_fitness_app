// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.ast.gql.dart'
    as _i4;
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;

part 'inspiration_response.req.gql.g.dart';

abstract class GInspirationResponseReq
    implements
        Built<GInspirationResponseReq, GInspirationResponseReqBuilder>,
        _i1.FragmentRequest<_i2.GInspirationResponseData,
            _i3.GInspirationResponseVars> {
  GInspirationResponseReq._();

  factory GInspirationResponseReq(
          [Function(GInspirationResponseReqBuilder b) updates]) =
      _$GInspirationResponseReq;

  static void _initializeBuilder(GInspirationResponseReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'InspirationResponse';
  _i3.GInspirationResponseVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GInspirationResponseData? parseData(Map<String, dynamic> json) =>
      _i2.GInspirationResponseData.fromJson(json);
  static Serializer<GInspirationResponseReq> get serializer =>
      _$gInspirationResponseReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GInspirationResponseReq.serializer, this)
          as Map<String, dynamic>);
  static GInspirationResponseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GInspirationResponseReq.serializer, json);
}
