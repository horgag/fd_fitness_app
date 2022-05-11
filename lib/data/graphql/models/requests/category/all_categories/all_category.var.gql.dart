// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'all_category.var.gql.g.dart';

abstract class GAllCategoriesVars
    implements Built<GAllCategoriesVars, GAllCategoriesVarsBuilder> {
  GAllCategoriesVars._();

  factory GAllCategoriesVars([Function(GAllCategoriesVarsBuilder b) updates]) =
      _$GAllCategoriesVars;

  static Serializer<GAllCategoriesVars> get serializer =>
      _$gAllCategoriesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAllCategoriesVars.serializer, this)
          as Map<String, dynamic>);
  static GAllCategoriesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAllCategoriesVars.serializer, json);
}
