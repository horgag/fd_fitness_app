// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'category_response.var.gql.g.dart';

abstract class GCategoryFeedVars
    implements Built<GCategoryFeedVars, GCategoryFeedVarsBuilder> {
  GCategoryFeedVars._();

  factory GCategoryFeedVars([Function(GCategoryFeedVarsBuilder b) updates]) =
      _$GCategoryFeedVars;

  static Serializer<GCategoryFeedVars> get serializer =>
      _$gCategoryFeedVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryFeedVars.serializer, this)
          as Map<String, dynamic>);
  static GCategoryFeedVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryFeedVars.serializer, json);
}
