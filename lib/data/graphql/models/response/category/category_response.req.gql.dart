// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.ast.gql.dart'
    as _i4;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.data.gql.dart'
    as _i2;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.var.gql.dart'
    as _i3;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i6;
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;

part 'category_response.req.gql.g.dart';

abstract class GCategoryFeedReq
    implements
        Built<GCategoryFeedReq, GCategoryFeedReqBuilder>,
        _i1.FragmentRequest<_i2.GCategoryFeedData, _i3.GCategoryFeedVars> {
  GCategoryFeedReq._();

  factory GCategoryFeedReq([Function(GCategoryFeedReqBuilder b) updates]) =
      _$GCategoryFeedReq;

  static void _initializeBuilder(GCategoryFeedReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CategoryFeed';
  _i3.GCategoryFeedVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCategoryFeedData? parseData(Map<String, dynamic> json) =>
      _i2.GCategoryFeedData.fromJson(json);
  static Serializer<GCategoryFeedReq> get serializer =>
      _$gCategoryFeedReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCategoryFeedReq.serializer, this)
          as Map<String, dynamic>);
  static GCategoryFeedReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCategoryFeedReq.serializer, json);
}
