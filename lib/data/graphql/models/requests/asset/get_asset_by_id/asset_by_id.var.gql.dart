// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'asset_by_id.var.gql.g.dart';

abstract class GGetAssetByIdVars
    implements Built<GGetAssetByIdVars, GGetAssetByIdVarsBuilder> {
  GGetAssetByIdVars._();

  factory GGetAssetByIdVars([Function(GGetAssetByIdVarsBuilder b) updates]) =
      _$GGetAssetByIdVars;

  String get assetID;
  static Serializer<GGetAssetByIdVars> get serializer =>
      _$gGetAssetByIdVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAssetByIdVars.serializer, this)
          as Map<String, dynamic>);
  static GGetAssetByIdVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAssetByIdVars.serializer, json);
}
