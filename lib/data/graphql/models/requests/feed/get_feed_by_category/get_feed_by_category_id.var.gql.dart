// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'get_feed_by_category_id.var.gql.g.dart';

abstract class GFeedByCategoryIdVars
    implements Built<GFeedByCategoryIdVars, GFeedByCategoryIdVarsBuilder> {
  GFeedByCategoryIdVars._();

  factory GFeedByCategoryIdVars(
          [Function(GFeedByCategoryIdVarsBuilder b) updates]) =
      _$GFeedByCategoryIdVars;

  String get categoryID;
  static Serializer<GFeedByCategoryIdVars> get serializer =>
      _$gFeedByCategoryIdVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedByCategoryIdVars.serializer, this)
          as Map<String, dynamic>);
  static GFeedByCategoryIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedByCategoryIdVars.serializer, json);
}
