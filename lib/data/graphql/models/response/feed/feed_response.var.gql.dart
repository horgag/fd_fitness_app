// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'feed_response.var.gql.g.dart';

abstract class GFeedResponseVars
    implements Built<GFeedResponseVars, GFeedResponseVarsBuilder> {
  GFeedResponseVars._();

  factory GFeedResponseVars([Function(GFeedResponseVarsBuilder b) updates]) =
      _$GFeedResponseVars;

  static Serializer<GFeedResponseVars> get serializer =>
      _$gFeedResponseVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedResponseVars.serializer, this)
          as Map<String, dynamic>);
  static GFeedResponseVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedResponseVars.serializer, json);
}
