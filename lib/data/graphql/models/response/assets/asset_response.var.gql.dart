// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'asset_response.var.gql.g.dart';

abstract class GAssetResponseVars
    implements Built<GAssetResponseVars, GAssetResponseVarsBuilder> {
  GAssetResponseVars._();

  factory GAssetResponseVars([Function(GAssetResponseVarsBuilder b) updates]) =
      _$GAssetResponseVars;

  static Serializer<GAssetResponseVars> get serializer =>
      _$gAssetResponseVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetResponseVars.serializer, this)
          as Map<String, dynamic>);
  static GAssetResponseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetResponseVars.serializer, json);
}
