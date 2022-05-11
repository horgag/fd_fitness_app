// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;

part 'all_feed.var.gql.g.dart';

abstract class GAllFeedVars
    implements Built<GAllFeedVars, GAllFeedVarsBuilder> {
  GAllFeedVars._();

  factory GAllFeedVars([Function(GAllFeedVarsBuilder b) updates]) =
      _$GAllFeedVars;

  static Serializer<GAllFeedVars> get serializer => _$gAllFeedVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAllFeedVars.serializer, this)
          as Map<String, dynamic>);
  static GAllFeedVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAllFeedVars.serializer, json);
}
