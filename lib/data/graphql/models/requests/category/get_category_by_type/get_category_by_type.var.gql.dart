// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/schema.schema.gql.dart'
    as _i1;
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i2;

part 'get_category_by_type.var.gql.g.dart';

abstract class GGetCategoryByTypeVars
    implements Built<GGetCategoryByTypeVars, GGetCategoryByTypeVarsBuilder> {
  GGetCategoryByTypeVars._();

  factory GGetCategoryByTypeVars(
          [Function(GGetCategoryByTypeVarsBuilder b) updates]) =
      _$GGetCategoryByTypeVars;

  _i1.GCategoryTitle get categoryTitle;
  static Serializer<GGetCategoryByTypeVars> get serializer =>
      _$gGetCategoryByTypeVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GGetCategoryByTypeVars.serializer, this)
          as Map<String, dynamic>);
  static GGetCategoryByTypeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GGetCategoryByTypeVars.serializer, json);
}
