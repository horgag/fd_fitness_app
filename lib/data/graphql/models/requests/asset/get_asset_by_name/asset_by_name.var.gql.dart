// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'asset_by_name.var.gql.g.dart';

abstract class GGetAssetByFileNameVars
    implements Built<GGetAssetByFileNameVars, GGetAssetByFileNameVarsBuilder> {
  GGetAssetByFileNameVars._();

  factory GGetAssetByFileNameVars(
          [Function(GGetAssetByFileNameVarsBuilder b) updates]) =
      _$GGetAssetByFileNameVars;

  String get assetFileName;
  static Serializer<GGetAssetByFileNameVars> get serializer =>
      _$gGetAssetByFileNameVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetAssetByFileNameVars.serializer, this)
          as Map<String, dynamic>);
  static GGetAssetByFileNameVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetAssetByFileNameVars.serializer, json);
}
