// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'all_inspirations.var.gql.g.dart';

abstract class GAllInspirationsVars
    implements Built<GAllInspirationsVars, GAllInspirationsVarsBuilder> {
  GAllInspirationsVars._();

  factory GAllInspirationsVars(
          [Function(GAllInspirationsVarsBuilder b) updates]) =
      _$GAllInspirationsVars;

  static Serializer<GAllInspirationsVars> get serializer =>
      _$gAllInspirationsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAllInspirationsVars.serializer, this)
          as Map<String, dynamic>);
  static GAllInspirationsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAllInspirationsVars.serializer, json);
}
