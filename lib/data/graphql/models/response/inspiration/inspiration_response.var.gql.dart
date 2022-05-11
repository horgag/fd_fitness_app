// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'inspiration_response.var.gql.g.dart';

abstract class GInspirationResponseVars
    implements
        Built<GInspirationResponseVars, GInspirationResponseVarsBuilder> {
  GInspirationResponseVars._();

  factory GInspirationResponseVars(
          [Function(GInspirationResponseVarsBuilder b) updates]) =
      _$GInspirationResponseVars;

  static Serializer<GInspirationResponseVars> get serializer =>
      _$gInspirationResponseVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GInspirationResponseVars.serializer, this)
          as Map<String, dynamic>);
  static GInspirationResponseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationResponseVars.serializer, json);
}
