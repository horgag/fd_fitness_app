// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fd_fitness_app/data/graphql/schema/serializers.gql.dart' as _i1;
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i2;

part 'schema.schema.gql.g.dart';

class G_FilterKind extends EnumClass {
  const G_FilterKind._(String name) : super(name);

  static const G_FilterKind search = _$gFilterKindsearch;

  static const G_FilterKind AND = _$gFilterKindAND;

  static const G_FilterKind OR = _$gFilterKindOR;

  static const G_FilterKind NOT = _$gFilterKindNOT;

  static const G_FilterKind eq = _$gFilterKindeq;

  static const G_FilterKind eq_not = _$gFilterKindeq_not;

  @BuiltValueEnumConst(wireName: 'in')
  static const G_FilterKind Gin = _$gFilterKindGin;

  static const G_FilterKind not_in = _$gFilterKindnot_in;

  static const G_FilterKind lt = _$gFilterKindlt;

  static const G_FilterKind lte = _$gFilterKindlte;

  static const G_FilterKind gt = _$gFilterKindgt;

  static const G_FilterKind gte = _$gFilterKindgte;

  static const G_FilterKind contains = _$gFilterKindcontains;

  static const G_FilterKind not_contains = _$gFilterKindnot_contains;

  static const G_FilterKind starts_with = _$gFilterKindstarts_with;

  static const G_FilterKind not_starts_with = _$gFilterKindnot_starts_with;

  static const G_FilterKind ends_with = _$gFilterKindends_with;

  static const G_FilterKind not_ends_with = _$gFilterKindnot_ends_with;

  static const G_FilterKind contains_all = _$gFilterKindcontains_all;

  static const G_FilterKind contains_some = _$gFilterKindcontains_some;

  static const G_FilterKind contains_none = _$gFilterKindcontains_none;

  static const G_FilterKind relational_single = _$gFilterKindrelational_single;

  static const G_FilterKind relational_every = _$gFilterKindrelational_every;

  static const G_FilterKind relational_some = _$gFilterKindrelational_some;

  static const G_FilterKind relational_none = _$gFilterKindrelational_none;

  static Serializer<G_FilterKind> get serializer => _$gFilterKindSerializer;
  static BuiltSet<G_FilterKind> get values => _$gFilterKindValues;
  static G_FilterKind valueOf(String name) => _$gFilterKindValueOf(name);
}

class G_MutationInputFieldKind extends EnumClass {
  const G_MutationInputFieldKind._(String name) : super(name);

  static const G_MutationInputFieldKind scalar =
      _$gMutationInputFieldKindscalar;

  static const G_MutationInputFieldKind richText =
      _$gMutationInputFieldKindrichText;

  static const G_MutationInputFieldKind richTextWithEmbeds =
      _$gMutationInputFieldKindrichTextWithEmbeds;

  @BuiltValueEnumConst(wireName: 'enum')
  static const G_MutationInputFieldKind Genum = _$gMutationInputFieldKindGenum;

  static const G_MutationInputFieldKind relation =
      _$gMutationInputFieldKindrelation;

  static const G_MutationInputFieldKind union = _$gMutationInputFieldKindunion;

  static const G_MutationInputFieldKind virtual =
      _$gMutationInputFieldKindvirtual;

  static Serializer<G_MutationInputFieldKind> get serializer =>
      _$gMutationInputFieldKindSerializer;
  static BuiltSet<G_MutationInputFieldKind> get values =>
      _$gMutationInputFieldKindValues;
  static G_MutationInputFieldKind valueOf(String name) =>
      _$gMutationInputFieldKindValueOf(name);
}

class G_MutationKind extends EnumClass {
  const G_MutationKind._(String name) : super(name);

  static const G_MutationKind create = _$gMutationKindcreate;

  static const G_MutationKind publish = _$gMutationKindpublish;

  static const G_MutationKind unpublish = _$gMutationKindunpublish;

  static const G_MutationKind update = _$gMutationKindupdate;

  static const G_MutationKind upsert = _$gMutationKindupsert;

  static const G_MutationKind delete = _$gMutationKinddelete;

  static const G_MutationKind updateMany = _$gMutationKindupdateMany;

  static const G_MutationKind publishMany = _$gMutationKindpublishMany;

  static const G_MutationKind unpublishMany = _$gMutationKindunpublishMany;

  static const G_MutationKind deleteMany = _$gMutationKinddeleteMany;

  static Serializer<G_MutationKind> get serializer => _$gMutationKindSerializer;
  static BuiltSet<G_MutationKind> get values => _$gMutationKindValues;
  static G_MutationKind valueOf(String name) => _$gMutationKindValueOf(name);
}

class G_OrderDirection extends EnumClass {
  const G_OrderDirection._(String name) : super(name);

  static const G_OrderDirection asc = _$gOrderDirectionasc;

  static const G_OrderDirection desc = _$gOrderDirectiondesc;

  static Serializer<G_OrderDirection> get serializer =>
      _$gOrderDirectionSerializer;
  static BuiltSet<G_OrderDirection> get values => _$gOrderDirectionValues;
  static G_OrderDirection valueOf(String name) =>
      _$gOrderDirectionValueOf(name);
}

class G_RelationInputCardinality extends EnumClass {
  const G_RelationInputCardinality._(String name) : super(name);

  static const G_RelationInputCardinality one = _$gRelationInputCardinalityone;

  static const G_RelationInputCardinality many =
      _$gRelationInputCardinalitymany;

  static Serializer<G_RelationInputCardinality> get serializer =>
      _$gRelationInputCardinalitySerializer;
  static BuiltSet<G_RelationInputCardinality> get values =>
      _$gRelationInputCardinalityValues;
  static G_RelationInputCardinality valueOf(String name) =>
      _$gRelationInputCardinalityValueOf(name);
}

class G_RelationInputKind extends EnumClass {
  const G_RelationInputKind._(String name) : super(name);

  static const G_RelationInputKind create = _$gRelationInputKindcreate;

  static const G_RelationInputKind update = _$gRelationInputKindupdate;

  static Serializer<G_RelationInputKind> get serializer =>
      _$gRelationInputKindSerializer;
  static BuiltSet<G_RelationInputKind> get values => _$gRelationInputKindValues;
  static G_RelationInputKind valueOf(String name) =>
      _$gRelationInputKindValueOf(name);
}

class G_RelationKind extends EnumClass {
  const G_RelationKind._(String name) : super(name);

  static const G_RelationKind regular = _$gRelationKindregular;

  static const G_RelationKind union = _$gRelationKindunion;

  static Serializer<G_RelationKind> get serializer => _$gRelationKindSerializer;
  static BuiltSet<G_RelationKind> get values => _$gRelationKindValues;
  static G_RelationKind valueOf(String name) => _$gRelationKindValueOf(name);
}

class Guntitled extends EnumClass {
  const Guntitled._(String name) : super(name);

  static const Guntitled base = _$guntitledbase;

  static const Guntitled localization = _$guntitledlocalization;

  static const Guntitled combined = _$guntitledcombined;

  static Serializer<Guntitled> get serializer => _$guntitledSerializer;
  static BuiltSet<Guntitled> get values => _$guntitledValues;
  static Guntitled valueOf(String name) => _$guntitledValueOf(name);
}

abstract class GAssetConnectInput
    implements Built<GAssetConnectInput, GAssetConnectInputBuilder> {
  GAssetConnectInput._();

  factory GAssetConnectInput([Function(GAssetConnectInputBuilder b) updates]) =
      _$GAssetConnectInput;

  GAssetWhereUniqueInput get where;
  GConnectPositionInput? get position;
  static Serializer<GAssetConnectInput> get serializer =>
      _$gAssetConnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetConnectInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetConnectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetConnectInput.serializer, json);
}

abstract class GAssetCreateInput
    implements Built<GAssetCreateInput, GAssetCreateInputBuilder> {
  GAssetCreateInput._();

  factory GAssetCreateInput([Function(GAssetCreateInputBuilder b) updates]) =
      _$GAssetCreateInput;

  DateTime? get createdAt;
  DateTime? get updatedAt;
  String get handle;
  String get fileName;
  double? get height;
  double? get width;
  double? get size;
  String? get mimeType;
  GFeedItemCreateManyInlineInput? get mainImageFeedItem;
  GFeedItemCategoryCreateManyInlineInput? get mainImageFeedItemCategory;
  GFeedItemCreateManyInlineInput? get videoFeedItem;
  GInspirationItemCreateManyInlineInput? get videoInspirationItem;
  GInspirationItemCreateManyInlineInput? get mainImageInspirationItem;
  GCategoryCreateManyInlineInput? get mainImageCategory;
  GAssetCreateLocalizationsInput? get localizations;
  static Serializer<GAssetCreateInput> get serializer =>
      _$gAssetCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetCreateInput.serializer, json);
}

abstract class GAssetCreateLocalizationDataInput
    implements
        Built<GAssetCreateLocalizationDataInput,
            GAssetCreateLocalizationDataInputBuilder> {
  GAssetCreateLocalizationDataInput._();

  factory GAssetCreateLocalizationDataInput(
          [Function(GAssetCreateLocalizationDataInputBuilder b) updates]) =
      _$GAssetCreateLocalizationDataInput;

  DateTime? get createdAt;
  DateTime? get updatedAt;
  String get handle;
  String get fileName;
  double? get height;
  double? get width;
  double? get size;
  String? get mimeType;
  static Serializer<GAssetCreateLocalizationDataInput> get serializer =>
      _$gAssetCreateLocalizationDataInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssetCreateLocalizationDataInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetCreateLocalizationDataInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetCreateLocalizationDataInput.serializer, json);
}

abstract class GAssetCreateLocalizationInput
    implements
        Built<GAssetCreateLocalizationInput,
            GAssetCreateLocalizationInputBuilder> {
  GAssetCreateLocalizationInput._();

  factory GAssetCreateLocalizationInput(
          [Function(GAssetCreateLocalizationInputBuilder b) updates]) =
      _$GAssetCreateLocalizationInput;

  GAssetCreateLocalizationDataInput get data;
  GLocale get locale;
  static Serializer<GAssetCreateLocalizationInput> get serializer =>
      _$gAssetCreateLocalizationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetCreateLocalizationInput.serializer, this) as Map<String, dynamic>);
  static GAssetCreateLocalizationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetCreateLocalizationInput.serializer, json);
}

abstract class GAssetCreateLocalizationsInput
    implements
        Built<GAssetCreateLocalizationsInput,
            GAssetCreateLocalizationsInputBuilder> {
  GAssetCreateLocalizationsInput._();

  factory GAssetCreateLocalizationsInput(
          [Function(GAssetCreateLocalizationsInputBuilder b) updates]) =
      _$GAssetCreateLocalizationsInput;

  BuiltList<GAssetCreateLocalizationInput>? get create;
  static Serializer<GAssetCreateLocalizationsInput> get serializer =>
      _$gAssetCreateLocalizationsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetCreateLocalizationsInput.serializer, this) as Map<String, dynamic>);
  static GAssetCreateLocalizationsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetCreateLocalizationsInput.serializer, json);
}

abstract class GAssetCreateManyInlineInput
    implements
        Built<GAssetCreateManyInlineInput, GAssetCreateManyInlineInputBuilder> {
  GAssetCreateManyInlineInput._();

  factory GAssetCreateManyInlineInput(
          [Function(GAssetCreateManyInlineInputBuilder b) updates]) =
      _$GAssetCreateManyInlineInput;

  BuiltList<GAssetCreateInput>? get create;
  BuiltList<GAssetWhereUniqueInput>? get connect;
  static Serializer<GAssetCreateManyInlineInput> get serializer =>
      _$gAssetCreateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetCreateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GAssetCreateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetCreateManyInlineInput.serializer, json);
}

abstract class GAssetCreateOneInlineInput
    implements
        Built<GAssetCreateOneInlineInput, GAssetCreateOneInlineInputBuilder> {
  GAssetCreateOneInlineInput._();

  factory GAssetCreateOneInlineInput(
          [Function(GAssetCreateOneInlineInputBuilder b) updates]) =
      _$GAssetCreateOneInlineInput;

  GAssetCreateInput? get create;
  GAssetWhereUniqueInput? get connect;
  static Serializer<GAssetCreateOneInlineInput> get serializer =>
      _$gAssetCreateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetCreateOneInlineInput.serializer, this) as Map<String, dynamic>);
  static GAssetCreateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetCreateOneInlineInput.serializer, json);
}

abstract class GAssetManyWhereInput
    implements Built<GAssetManyWhereInput, GAssetManyWhereInputBuilder> {
  GAssetManyWhereInput._();

  factory GAssetManyWhereInput(
          [Function(GAssetManyWhereInputBuilder b) updates]) =
      _$GAssetManyWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GAssetWhereInput>? get AND;
  BuiltList<GAssetWhereInput>? get OR;
  BuiltList<GAssetWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GFeedItemWhereInput? get mainImageFeedItem_every;
  GFeedItemWhereInput? get mainImageFeedItem_some;
  GFeedItemWhereInput? get mainImageFeedItem_none;
  GFeedItemCategoryWhereInput? get mainImageFeedItemCategory_every;
  GFeedItemCategoryWhereInput? get mainImageFeedItemCategory_some;
  GFeedItemCategoryWhereInput? get mainImageFeedItemCategory_none;
  GFeedItemWhereInput? get videoFeedItem_every;
  GFeedItemWhereInput? get videoFeedItem_some;
  GFeedItemWhereInput? get videoFeedItem_none;
  GInspirationItemWhereInput? get videoInspirationItem_every;
  GInspirationItemWhereInput? get videoInspirationItem_some;
  GInspirationItemWhereInput? get videoInspirationItem_none;
  GInspirationItemWhereInput? get mainImageInspirationItem_every;
  GInspirationItemWhereInput? get mainImageInspirationItem_some;
  GInspirationItemWhereInput? get mainImageInspirationItem_none;
  GCategoryWhereInput? get mainImageCategory_every;
  GCategoryWhereInput? get mainImageCategory_some;
  GCategoryWhereInput? get mainImageCategory_none;
  static Serializer<GAssetManyWhereInput> get serializer =>
      _$gAssetManyWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetManyWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetManyWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetManyWhereInput.serializer, json);
}

class GAssetOrderByInput extends EnumClass {
  const GAssetOrderByInput._(String name) : super(name);

  static const GAssetOrderByInput id_ASC = _$gAssetOrderByInputid_ASC;

  static const GAssetOrderByInput id_DESC = _$gAssetOrderByInputid_DESC;

  static const GAssetOrderByInput createdAt_ASC =
      _$gAssetOrderByInputcreatedAt_ASC;

  static const GAssetOrderByInput createdAt_DESC =
      _$gAssetOrderByInputcreatedAt_DESC;

  static const GAssetOrderByInput updatedAt_ASC =
      _$gAssetOrderByInputupdatedAt_ASC;

  static const GAssetOrderByInput updatedAt_DESC =
      _$gAssetOrderByInputupdatedAt_DESC;

  static const GAssetOrderByInput publishedAt_ASC =
      _$gAssetOrderByInputpublishedAt_ASC;

  static const GAssetOrderByInput publishedAt_DESC =
      _$gAssetOrderByInputpublishedAt_DESC;

  static const GAssetOrderByInput handle_ASC = _$gAssetOrderByInputhandle_ASC;

  static const GAssetOrderByInput handle_DESC = _$gAssetOrderByInputhandle_DESC;

  static const GAssetOrderByInput fileName_ASC =
      _$gAssetOrderByInputfileName_ASC;

  static const GAssetOrderByInput fileName_DESC =
      _$gAssetOrderByInputfileName_DESC;

  static const GAssetOrderByInput height_ASC = _$gAssetOrderByInputheight_ASC;

  static const GAssetOrderByInput height_DESC = _$gAssetOrderByInputheight_DESC;

  static const GAssetOrderByInput width_ASC = _$gAssetOrderByInputwidth_ASC;

  static const GAssetOrderByInput width_DESC = _$gAssetOrderByInputwidth_DESC;

  static const GAssetOrderByInput size_ASC = _$gAssetOrderByInputsize_ASC;

  static const GAssetOrderByInput size_DESC = _$gAssetOrderByInputsize_DESC;

  static const GAssetOrderByInput mimeType_ASC =
      _$gAssetOrderByInputmimeType_ASC;

  static const GAssetOrderByInput mimeType_DESC =
      _$gAssetOrderByInputmimeType_DESC;

  static Serializer<GAssetOrderByInput> get serializer =>
      _$gAssetOrderByInputSerializer;
  static BuiltSet<GAssetOrderByInput> get values => _$gAssetOrderByInputValues;
  static GAssetOrderByInput valueOf(String name) =>
      _$gAssetOrderByInputValueOf(name);
}

abstract class GAssetTransformationInput
    implements
        Built<GAssetTransformationInput, GAssetTransformationInputBuilder> {
  GAssetTransformationInput._();

  factory GAssetTransformationInput(
          [Function(GAssetTransformationInputBuilder b) updates]) =
      _$GAssetTransformationInput;

  GImageTransformationInput? get image;
  GDocumentTransformationInput? get document;
  bool? get validateOptions;
  static Serializer<GAssetTransformationInput> get serializer =>
      _$gAssetTransformationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetTransformationInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetTransformationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetTransformationInput.serializer, json);
}

abstract class GAssetUpdateInput
    implements Built<GAssetUpdateInput, GAssetUpdateInputBuilder> {
  GAssetUpdateInput._();

  factory GAssetUpdateInput([Function(GAssetUpdateInputBuilder b) updates]) =
      _$GAssetUpdateInput;

  String? get handle;
  String? get fileName;
  double? get height;
  double? get width;
  double? get size;
  String? get mimeType;
  GFeedItemUpdateManyInlineInput? get mainImageFeedItem;
  GFeedItemCategoryUpdateManyInlineInput? get mainImageFeedItemCategory;
  GFeedItemUpdateManyInlineInput? get videoFeedItem;
  GInspirationItemUpdateManyInlineInput? get videoInspirationItem;
  GInspirationItemUpdateManyInlineInput? get mainImageInspirationItem;
  GCategoryUpdateManyInlineInput? get mainImageCategory;
  GAssetUpdateLocalizationsInput? get localizations;
  static Serializer<GAssetUpdateInput> get serializer =>
      _$gAssetUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetUpdateInput.serializer, json);
}

abstract class GAssetUpdateLocalizationDataInput
    implements
        Built<GAssetUpdateLocalizationDataInput,
            GAssetUpdateLocalizationDataInputBuilder> {
  GAssetUpdateLocalizationDataInput._();

  factory GAssetUpdateLocalizationDataInput(
          [Function(GAssetUpdateLocalizationDataInputBuilder b) updates]) =
      _$GAssetUpdateLocalizationDataInput;

  String? get handle;
  String? get fileName;
  double? get height;
  double? get width;
  double? get size;
  String? get mimeType;
  static Serializer<GAssetUpdateLocalizationDataInput> get serializer =>
      _$gAssetUpdateLocalizationDataInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssetUpdateLocalizationDataInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetUpdateLocalizationDataInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpdateLocalizationDataInput.serializer, json);
}

abstract class GAssetUpdateLocalizationInput
    implements
        Built<GAssetUpdateLocalizationInput,
            GAssetUpdateLocalizationInputBuilder> {
  GAssetUpdateLocalizationInput._();

  factory GAssetUpdateLocalizationInput(
          [Function(GAssetUpdateLocalizationInputBuilder b) updates]) =
      _$GAssetUpdateLocalizationInput;

  GAssetUpdateLocalizationDataInput get data;
  GLocale get locale;
  static Serializer<GAssetUpdateLocalizationInput> get serializer =>
      _$gAssetUpdateLocalizationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetUpdateLocalizationInput.serializer, this) as Map<String, dynamic>);
  static GAssetUpdateLocalizationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpdateLocalizationInput.serializer, json);
}

abstract class GAssetUpdateLocalizationsInput
    implements
        Built<GAssetUpdateLocalizationsInput,
            GAssetUpdateLocalizationsInputBuilder> {
  GAssetUpdateLocalizationsInput._();

  factory GAssetUpdateLocalizationsInput(
          [Function(GAssetUpdateLocalizationsInputBuilder b) updates]) =
      _$GAssetUpdateLocalizationsInput;

  BuiltList<GAssetCreateLocalizationInput>? get create;
  BuiltList<GAssetUpdateLocalizationInput>? get updateIt;
  BuiltList<GAssetUpsertLocalizationInput>? get upsert;
  BuiltList<GLocale>? get delete;
  static Serializer<GAssetUpdateLocalizationsInput> get serializer =>
      _$gAssetUpdateLocalizationsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetUpdateLocalizationsInput.serializer, this) as Map<String, dynamic>);
  static GAssetUpdateLocalizationsInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpdateLocalizationsInput.serializer, json);
}

abstract class GAssetUpdateManyInlineInput
    implements
        Built<GAssetUpdateManyInlineInput, GAssetUpdateManyInlineInputBuilder> {
  GAssetUpdateManyInlineInput._();

  factory GAssetUpdateManyInlineInput(
          [Function(GAssetUpdateManyInlineInputBuilder b) updates]) =
      _$GAssetUpdateManyInlineInput;

  BuiltList<GAssetCreateInput>? get create;
  BuiltList<GAssetConnectInput>? get connect;
  BuiltList<GAssetWhereUniqueInput>? get set;
  BuiltList<GAssetUpdateWithNestedWhereUniqueInput>? get updateIt;
  BuiltList<GAssetUpsertWithNestedWhereUniqueInput>? get upsert;
  BuiltList<GAssetWhereUniqueInput>? get disconnect;
  BuiltList<GAssetWhereUniqueInput>? get delete;
  static Serializer<GAssetUpdateManyInlineInput> get serializer =>
      _$gAssetUpdateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetUpdateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GAssetUpdateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpdateManyInlineInput.serializer, json);
}

abstract class GAssetUpdateManyInput
    implements Built<GAssetUpdateManyInput, GAssetUpdateManyInputBuilder> {
  GAssetUpdateManyInput._();

  factory GAssetUpdateManyInput(
          [Function(GAssetUpdateManyInputBuilder b) updates]) =
      _$GAssetUpdateManyInput;

  String? get fileName;
  double? get height;
  double? get width;
  double? get size;
  String? get mimeType;
  GAssetUpdateManyLocalizationsInput? get localizations;
  static Serializer<GAssetUpdateManyInput> get serializer =>
      _$gAssetUpdateManyInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetUpdateManyInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetUpdateManyInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetUpdateManyInput.serializer, json);
}

abstract class GAssetUpdateManyLocalizationDataInput
    implements
        Built<GAssetUpdateManyLocalizationDataInput,
            GAssetUpdateManyLocalizationDataInputBuilder> {
  GAssetUpdateManyLocalizationDataInput._();

  factory GAssetUpdateManyLocalizationDataInput(
          [Function(GAssetUpdateManyLocalizationDataInputBuilder b) updates]) =
      _$GAssetUpdateManyLocalizationDataInput;

  String? get fileName;
  double? get height;
  double? get width;
  double? get size;
  String? get mimeType;
  static Serializer<GAssetUpdateManyLocalizationDataInput> get serializer =>
      _$gAssetUpdateManyLocalizationDataInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssetUpdateManyLocalizationDataInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetUpdateManyLocalizationDataInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssetUpdateManyLocalizationDataInput.serializer, json);
}

abstract class GAssetUpdateManyLocalizationInput
    implements
        Built<GAssetUpdateManyLocalizationInput,
            GAssetUpdateManyLocalizationInputBuilder> {
  GAssetUpdateManyLocalizationInput._();

  factory GAssetUpdateManyLocalizationInput(
          [Function(GAssetUpdateManyLocalizationInputBuilder b) updates]) =
      _$GAssetUpdateManyLocalizationInput;

  GAssetUpdateManyLocalizationDataInput get data;
  GLocale get locale;
  static Serializer<GAssetUpdateManyLocalizationInput> get serializer =>
      _$gAssetUpdateManyLocalizationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssetUpdateManyLocalizationInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetUpdateManyLocalizationInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpdateManyLocalizationInput.serializer, json);
}

abstract class GAssetUpdateManyLocalizationsInput
    implements
        Built<GAssetUpdateManyLocalizationsInput,
            GAssetUpdateManyLocalizationsInputBuilder> {
  GAssetUpdateManyLocalizationsInput._();

  factory GAssetUpdateManyLocalizationsInput(
          [Function(GAssetUpdateManyLocalizationsInputBuilder b) updates]) =
      _$GAssetUpdateManyLocalizationsInput;

  BuiltList<GAssetUpdateManyLocalizationInput>? get updateIt;
  static Serializer<GAssetUpdateManyLocalizationsInput> get serializer =>
      _$gAssetUpdateManyLocalizationsInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssetUpdateManyLocalizationsInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetUpdateManyLocalizationsInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpdateManyLocalizationsInput.serializer, json);
}

abstract class GAssetUpdateManyWithNestedWhereInput
    implements
        Built<GAssetUpdateManyWithNestedWhereInput,
            GAssetUpdateManyWithNestedWhereInputBuilder> {
  GAssetUpdateManyWithNestedWhereInput._();

  factory GAssetUpdateManyWithNestedWhereInput(
          [Function(GAssetUpdateManyWithNestedWhereInputBuilder b) updates]) =
      _$GAssetUpdateManyWithNestedWhereInput;

  GAssetWhereInput get where;
  GAssetUpdateManyInput get data;
  static Serializer<GAssetUpdateManyWithNestedWhereInput> get serializer =>
      _$gAssetUpdateManyWithNestedWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAssetUpdateManyWithNestedWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetUpdateManyWithNestedWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssetUpdateManyWithNestedWhereInput.serializer, json);
}

abstract class GAssetUpdateOneInlineInput
    implements
        Built<GAssetUpdateOneInlineInput, GAssetUpdateOneInlineInputBuilder> {
  GAssetUpdateOneInlineInput._();

  factory GAssetUpdateOneInlineInput(
          [Function(GAssetUpdateOneInlineInputBuilder b) updates]) =
      _$GAssetUpdateOneInlineInput;

  GAssetCreateInput? get create;
  GAssetUpdateWithNestedWhereUniqueInput? get updateIt;
  GAssetUpsertWithNestedWhereUniqueInput? get upsert;
  GAssetWhereUniqueInput? get connect;
  bool? get disconnect;
  bool? get delete;
  static Serializer<GAssetUpdateOneInlineInput> get serializer =>
      _$gAssetUpdateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetUpdateOneInlineInput.serializer, this) as Map<String, dynamic>);
  static GAssetUpdateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpdateOneInlineInput.serializer, json);
}

abstract class GAssetUpdateWithNestedWhereUniqueInput
    implements
        Built<GAssetUpdateWithNestedWhereUniqueInput,
            GAssetUpdateWithNestedWhereUniqueInputBuilder> {
  GAssetUpdateWithNestedWhereUniqueInput._();

  factory GAssetUpdateWithNestedWhereUniqueInput(
          [Function(GAssetUpdateWithNestedWhereUniqueInputBuilder b) updates]) =
      _$GAssetUpdateWithNestedWhereUniqueInput;

  GAssetWhereUniqueInput get where;
  GAssetUpdateInput get data;
  static Serializer<GAssetUpdateWithNestedWhereUniqueInput> get serializer =>
      _$gAssetUpdateWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAssetUpdateWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetUpdateWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssetUpdateWithNestedWhereUniqueInput.serializer, json);
}

abstract class GAssetUpsertInput
    implements Built<GAssetUpsertInput, GAssetUpsertInputBuilder> {
  GAssetUpsertInput._();

  factory GAssetUpsertInput([Function(GAssetUpsertInputBuilder b) updates]) =
      _$GAssetUpsertInput;

  GAssetCreateInput get create;
  GAssetUpdateInput get updateIt;
  static Serializer<GAssetUpsertInput> get serializer =>
      _$gAssetUpsertInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetUpsertInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetUpsertInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetUpsertInput.serializer, json);
}

abstract class GAssetUpsertLocalizationInput
    implements
        Built<GAssetUpsertLocalizationInput,
            GAssetUpsertLocalizationInputBuilder> {
  GAssetUpsertLocalizationInput._();

  factory GAssetUpsertLocalizationInput(
          [Function(GAssetUpsertLocalizationInputBuilder b) updates]) =
      _$GAssetUpsertLocalizationInput;

  GAssetUpdateLocalizationDataInput get updateIt;
  GAssetCreateLocalizationDataInput get create;
  GLocale get locale;
  static Serializer<GAssetUpsertLocalizationInput> get serializer =>
      _$gAssetUpsertLocalizationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAssetUpsertLocalizationInput.serializer, this) as Map<String, dynamic>);
  static GAssetUpsertLocalizationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAssetUpsertLocalizationInput.serializer, json);
}

abstract class GAssetUpsertWithNestedWhereUniqueInput
    implements
        Built<GAssetUpsertWithNestedWhereUniqueInput,
            GAssetUpsertWithNestedWhereUniqueInputBuilder> {
  GAssetUpsertWithNestedWhereUniqueInput._();

  factory GAssetUpsertWithNestedWhereUniqueInput(
          [Function(GAssetUpsertWithNestedWhereUniqueInputBuilder b) updates]) =
      _$GAssetUpsertWithNestedWhereUniqueInput;

  GAssetWhereUniqueInput get where;
  GAssetUpsertInput get data;
  static Serializer<GAssetUpsertWithNestedWhereUniqueInput> get serializer =>
      _$gAssetUpsertWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAssetUpsertWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GAssetUpsertWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAssetUpsertWithNestedWhereUniqueInput.serializer, json);
}

abstract class GAssetWhereInput
    implements Built<GAssetWhereInput, GAssetWhereInputBuilder> {
  GAssetWhereInput._();

  factory GAssetWhereInput([Function(GAssetWhereInputBuilder b) updates]) =
      _$GAssetWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GAssetWhereInput>? get AND;
  BuiltList<GAssetWhereInput>? get OR;
  BuiltList<GAssetWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get handle;
  String? get handle_not;
  BuiltList<String>? get handle_in;
  BuiltList<String>? get handle_not_in;
  String? get handle_contains;
  String? get handle_not_contains;
  String? get handle_starts_with;
  String? get handle_not_starts_with;
  String? get handle_ends_with;
  String? get handle_not_ends_with;
  String? get fileName;
  String? get fileName_not;
  BuiltList<String>? get fileName_in;
  BuiltList<String>? get fileName_not_in;
  String? get fileName_contains;
  String? get fileName_not_contains;
  String? get fileName_starts_with;
  String? get fileName_not_starts_with;
  String? get fileName_ends_with;
  String? get fileName_not_ends_with;
  double? get height;
  double? get height_not;
  BuiltList<double>? get height_in;
  BuiltList<double>? get height_not_in;
  double? get height_lt;
  double? get height_lte;
  double? get height_gt;
  double? get height_gte;
  double? get width;
  double? get width_not;
  BuiltList<double>? get width_in;
  BuiltList<double>? get width_not_in;
  double? get width_lt;
  double? get width_lte;
  double? get width_gt;
  double? get width_gte;
  double? get size;
  double? get size_not;
  BuiltList<double>? get size_in;
  BuiltList<double>? get size_not_in;
  double? get size_lt;
  double? get size_lte;
  double? get size_gt;
  double? get size_gte;
  String? get mimeType;
  String? get mimeType_not;
  BuiltList<String>? get mimeType_in;
  BuiltList<String>? get mimeType_not_in;
  String? get mimeType_contains;
  String? get mimeType_not_contains;
  String? get mimeType_starts_with;
  String? get mimeType_not_starts_with;
  String? get mimeType_ends_with;
  String? get mimeType_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GFeedItemWhereInput? get mainImageFeedItem_every;
  GFeedItemWhereInput? get mainImageFeedItem_some;
  GFeedItemWhereInput? get mainImageFeedItem_none;
  GFeedItemCategoryWhereInput? get mainImageFeedItemCategory_every;
  GFeedItemCategoryWhereInput? get mainImageFeedItemCategory_some;
  GFeedItemCategoryWhereInput? get mainImageFeedItemCategory_none;
  GFeedItemWhereInput? get videoFeedItem_every;
  GFeedItemWhereInput? get videoFeedItem_some;
  GFeedItemWhereInput? get videoFeedItem_none;
  GInspirationItemWhereInput? get videoInspirationItem_every;
  GInspirationItemWhereInput? get videoInspirationItem_some;
  GInspirationItemWhereInput? get videoInspirationItem_none;
  GInspirationItemWhereInput? get mainImageInspirationItem_every;
  GInspirationItemWhereInput? get mainImageInspirationItem_some;
  GInspirationItemWhereInput? get mainImageInspirationItem_none;
  GCategoryWhereInput? get mainImageCategory_every;
  GCategoryWhereInput? get mainImageCategory_some;
  GCategoryWhereInput? get mainImageCategory_none;
  static Serializer<GAssetWhereInput> get serializer =>
      _$gAssetWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetWhereInput.serializer, json);
}

abstract class GAssetWhereUniqueInput
    implements Built<GAssetWhereUniqueInput, GAssetWhereUniqueInputBuilder> {
  GAssetWhereUniqueInput._();

  factory GAssetWhereUniqueInput(
          [Function(GAssetWhereUniqueInputBuilder b) updates]) =
      _$GAssetWhereUniqueInput;

  String? get id;
  static Serializer<GAssetWhereUniqueInput> get serializer =>
      _$gAssetWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAssetWhereUniqueInput.serializer, this)
          as Map<String, dynamic>);
  static GAssetWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAssetWhereUniqueInput.serializer, json);
}

class GBodyMeasurements extends EnumClass {
  const GBodyMeasurements._(String name) : super(name);

  static const GBodyMeasurements Chest = _$gBodyMeasurementsChest;

  static const GBodyMeasurements Hip = _$gBodyMeasurementsHip;

  static const GBodyMeasurements Waist = _$gBodyMeasurementsWaist;

  static const GBodyMeasurements Right_arm = _$gBodyMeasurementsRight_arm;

  static const GBodyMeasurements Left_arm = _$gBodyMeasurementsLeft_arm;

  static Serializer<GBodyMeasurements> get serializer =>
      _$gBodyMeasurementsSerializer;
  static BuiltSet<GBodyMeasurements> get values => _$gBodyMeasurementsValues;
  static GBodyMeasurements valueOf(String name) =>
      _$gBodyMeasurementsValueOf(name);
}

abstract class GCategoryConnectInput
    implements Built<GCategoryConnectInput, GCategoryConnectInputBuilder> {
  GCategoryConnectInput._();

  factory GCategoryConnectInput(
          [Function(GCategoryConnectInputBuilder b) updates]) =
      _$GCategoryConnectInput;

  GCategoryWhereUniqueInput get where;
  GConnectPositionInput? get position;
  static Serializer<GCategoryConnectInput> get serializer =>
      _$gCategoryConnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryConnectInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryConnectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryConnectInput.serializer, json);
}

abstract class GCategoryCreateInput
    implements Built<GCategoryCreateInput, GCategoryCreateInputBuilder> {
  GCategoryCreateInput._();

  factory GCategoryCreateInput(
          [Function(GCategoryCreateInputBuilder b) updates]) =
      _$GCategoryCreateInput;

  DateTime? get createdAt;
  DateTime? get updatedAt;
  String? get title;
  GAssetCreateOneInlineInput? get mainImage;
  GCategoryTitle? get categoryTitle;
  GCategoryFeedItemsCreateManyInlineInput? get feedItems;
  static Serializer<GCategoryCreateInput> get serializer =>
      _$gCategoryCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryCreateInput.serializer, json);
}

abstract class GCategoryCreateManyInlineInput
    implements
        Built<GCategoryCreateManyInlineInput,
            GCategoryCreateManyInlineInputBuilder> {
  GCategoryCreateManyInlineInput._();

  factory GCategoryCreateManyInlineInput(
          [Function(GCategoryCreateManyInlineInputBuilder b) updates]) =
      _$GCategoryCreateManyInlineInput;

  BuiltList<GCategoryCreateInput>? get create;
  BuiltList<GCategoryWhereUniqueInput>? get connect;
  static Serializer<GCategoryCreateManyInlineInput> get serializer =>
      _$gCategoryCreateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryCreateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GCategoryCreateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryCreateManyInlineInput.serializer, json);
}

abstract class GCategoryCreateOneInlineInput
    implements
        Built<GCategoryCreateOneInlineInput,
            GCategoryCreateOneInlineInputBuilder> {
  GCategoryCreateOneInlineInput._();

  factory GCategoryCreateOneInlineInput(
          [Function(GCategoryCreateOneInlineInputBuilder b) updates]) =
      _$GCategoryCreateOneInlineInput;

  GCategoryCreateInput? get create;
  GCategoryWhereUniqueInput? get connect;
  static Serializer<GCategoryCreateOneInlineInput> get serializer =>
      _$gCategoryCreateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryCreateOneInlineInput.serializer, this) as Map<String, dynamic>);
  static GCategoryCreateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryCreateOneInlineInput.serializer, json);
}

abstract class GCategoryFeedItemsConnectInput
    implements
        Built<GCategoryFeedItemsConnectInput,
            GCategoryFeedItemsConnectInputBuilder> {
  GCategoryFeedItemsConnectInput._();

  factory GCategoryFeedItemsConnectInput(
          [Function(GCategoryFeedItemsConnectInputBuilder b) updates]) =
      _$GCategoryFeedItemsConnectInput;

  GFeedItemConnectInput? get FeedItem;
  static Serializer<GCategoryFeedItemsConnectInput> get serializer =>
      _$gCategoryFeedItemsConnectInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryFeedItemsConnectInput.serializer, this) as Map<String, dynamic>);
  static GCategoryFeedItemsConnectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryFeedItemsConnectInput.serializer, json);
}

abstract class GCategoryFeedItemsCreateInput
    implements
        Built<GCategoryFeedItemsCreateInput,
            GCategoryFeedItemsCreateInputBuilder> {
  GCategoryFeedItemsCreateInput._();

  factory GCategoryFeedItemsCreateInput(
          [Function(GCategoryFeedItemsCreateInputBuilder b) updates]) =
      _$GCategoryFeedItemsCreateInput;

  GFeedItemCreateInput? get FeedItem;
  static Serializer<GCategoryFeedItemsCreateInput> get serializer =>
      _$gCategoryFeedItemsCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryFeedItemsCreateInput.serializer, this) as Map<String, dynamic>);
  static GCategoryFeedItemsCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryFeedItemsCreateInput.serializer, json);
}

abstract class GCategoryFeedItemsCreateManyInlineInput
    implements
        Built<GCategoryFeedItemsCreateManyInlineInput,
            GCategoryFeedItemsCreateManyInlineInputBuilder> {
  GCategoryFeedItemsCreateManyInlineInput._();

  factory GCategoryFeedItemsCreateManyInlineInput(
      [Function(GCategoryFeedItemsCreateManyInlineInputBuilder b)
          updates]) = _$GCategoryFeedItemsCreateManyInlineInput;

  BuiltList<GCategoryFeedItemsCreateInput>? get create;
  BuiltList<GCategoryFeedItemsWhereUniqueInput>? get connect;
  static Serializer<GCategoryFeedItemsCreateManyInlineInput> get serializer =>
      _$gCategoryFeedItemsCreateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryFeedItemsCreateManyInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsCreateManyInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryFeedItemsCreateManyInlineInput.serializer, json);
}

abstract class GCategoryFeedItemsCreateOneInlineInput
    implements
        Built<GCategoryFeedItemsCreateOneInlineInput,
            GCategoryFeedItemsCreateOneInlineInputBuilder> {
  GCategoryFeedItemsCreateOneInlineInput._();

  factory GCategoryFeedItemsCreateOneInlineInput(
          [Function(GCategoryFeedItemsCreateOneInlineInputBuilder b) updates]) =
      _$GCategoryFeedItemsCreateOneInlineInput;

  GCategoryFeedItemsCreateInput? get create;
  GCategoryFeedItemsWhereUniqueInput? get connect;
  static Serializer<GCategoryFeedItemsCreateOneInlineInput> get serializer =>
      _$gCategoryFeedItemsCreateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryFeedItemsCreateOneInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsCreateOneInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryFeedItemsCreateOneInlineInput.serializer, json);
}

abstract class GCategoryFeedItemsUpdateInput
    implements
        Built<GCategoryFeedItemsUpdateInput,
            GCategoryFeedItemsUpdateInputBuilder> {
  GCategoryFeedItemsUpdateInput._();

  factory GCategoryFeedItemsUpdateInput(
          [Function(GCategoryFeedItemsUpdateInputBuilder b) updates]) =
      _$GCategoryFeedItemsUpdateInput;

  GFeedItemUpdateInput? get FeedItem;
  static Serializer<GCategoryFeedItemsUpdateInput> get serializer =>
      _$gCategoryFeedItemsUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryFeedItemsUpdateInput.serializer, this) as Map<String, dynamic>);
  static GCategoryFeedItemsUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryFeedItemsUpdateInput.serializer, json);
}

abstract class GCategoryFeedItemsUpdateManyInlineInput
    implements
        Built<GCategoryFeedItemsUpdateManyInlineInput,
            GCategoryFeedItemsUpdateManyInlineInputBuilder> {
  GCategoryFeedItemsUpdateManyInlineInput._();

  factory GCategoryFeedItemsUpdateManyInlineInput(
      [Function(GCategoryFeedItemsUpdateManyInlineInputBuilder b)
          updates]) = _$GCategoryFeedItemsUpdateManyInlineInput;

  BuiltList<GCategoryFeedItemsCreateInput>? get create;
  BuiltList<GCategoryFeedItemsConnectInput>? get connect;
  BuiltList<GCategoryFeedItemsWhereUniqueInput>? get set;
  BuiltList<GCategoryFeedItemsUpdateWithNestedWhereUniqueInput>? get updateIt;
  BuiltList<GCategoryFeedItemsUpsertWithNestedWhereUniqueInput>? get upsert;
  BuiltList<GCategoryFeedItemsWhereUniqueInput>? get disconnect;
  BuiltList<GCategoryFeedItemsWhereUniqueInput>? get delete;
  static Serializer<GCategoryFeedItemsUpdateManyInlineInput> get serializer =>
      _$gCategoryFeedItemsUpdateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryFeedItemsUpdateManyInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsUpdateManyInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryFeedItemsUpdateManyInlineInput.serializer, json);
}

abstract class GCategoryFeedItemsUpdateManyWithNestedWhereInput
    implements
        Built<GCategoryFeedItemsUpdateManyWithNestedWhereInput,
            GCategoryFeedItemsUpdateManyWithNestedWhereInputBuilder> {
  GCategoryFeedItemsUpdateManyWithNestedWhereInput._();

  factory GCategoryFeedItemsUpdateManyWithNestedWhereInput(
      [Function(GCategoryFeedItemsUpdateManyWithNestedWhereInputBuilder b)
          updates]) = _$GCategoryFeedItemsUpdateManyWithNestedWhereInput;

  GFeedItemUpdateManyWithNestedWhereInput? get FeedItem;
  static Serializer<GCategoryFeedItemsUpdateManyWithNestedWhereInput>
      get serializer =>
          _$gCategoryFeedItemsUpdateManyWithNestedWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryFeedItemsUpdateManyWithNestedWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsUpdateManyWithNestedWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryFeedItemsUpdateManyWithNestedWhereInput.serializer, json);
}

abstract class GCategoryFeedItemsUpdateOneInlineInput
    implements
        Built<GCategoryFeedItemsUpdateOneInlineInput,
            GCategoryFeedItemsUpdateOneInlineInputBuilder> {
  GCategoryFeedItemsUpdateOneInlineInput._();

  factory GCategoryFeedItemsUpdateOneInlineInput(
          [Function(GCategoryFeedItemsUpdateOneInlineInputBuilder b) updates]) =
      _$GCategoryFeedItemsUpdateOneInlineInput;

  GCategoryFeedItemsCreateInput? get create;
  GCategoryFeedItemsUpdateWithNestedWhereUniqueInput? get updateIt;
  GCategoryFeedItemsUpsertWithNestedWhereUniqueInput? get upsert;
  GCategoryFeedItemsWhereUniqueInput? get connect;
  bool? get disconnect;
  bool? get delete;
  static Serializer<GCategoryFeedItemsUpdateOneInlineInput> get serializer =>
      _$gCategoryFeedItemsUpdateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryFeedItemsUpdateOneInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsUpdateOneInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryFeedItemsUpdateOneInlineInput.serializer, json);
}

abstract class GCategoryFeedItemsUpdateWithNestedWhereUniqueInput
    implements
        Built<GCategoryFeedItemsUpdateWithNestedWhereUniqueInput,
            GCategoryFeedItemsUpdateWithNestedWhereUniqueInputBuilder> {
  GCategoryFeedItemsUpdateWithNestedWhereUniqueInput._();

  factory GCategoryFeedItemsUpdateWithNestedWhereUniqueInput(
      [Function(GCategoryFeedItemsUpdateWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GCategoryFeedItemsUpdateWithNestedWhereUniqueInput;

  GFeedItemUpdateWithNestedWhereUniqueInput? get FeedItem;
  static Serializer<GCategoryFeedItemsUpdateWithNestedWhereUniqueInput>
      get serializer =>
          _$gCategoryFeedItemsUpdateWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryFeedItemsUpdateWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsUpdateWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryFeedItemsUpdateWithNestedWhereUniqueInput.serializer, json);
}

abstract class GCategoryFeedItemsUpsertWithNestedWhereUniqueInput
    implements
        Built<GCategoryFeedItemsUpsertWithNestedWhereUniqueInput,
            GCategoryFeedItemsUpsertWithNestedWhereUniqueInputBuilder> {
  GCategoryFeedItemsUpsertWithNestedWhereUniqueInput._();

  factory GCategoryFeedItemsUpsertWithNestedWhereUniqueInput(
      [Function(GCategoryFeedItemsUpsertWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GCategoryFeedItemsUpsertWithNestedWhereUniqueInput;

  GFeedItemUpsertWithNestedWhereUniqueInput? get FeedItem;
  static Serializer<GCategoryFeedItemsUpsertWithNestedWhereUniqueInput>
      get serializer =>
          _$gCategoryFeedItemsUpsertWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryFeedItemsUpsertWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsUpsertWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryFeedItemsUpsertWithNestedWhereUniqueInput.serializer, json);
}

abstract class GCategoryFeedItemsWhereInput
    implements
        Built<GCategoryFeedItemsWhereInput,
            GCategoryFeedItemsWhereInputBuilder> {
  GCategoryFeedItemsWhereInput._();

  factory GCategoryFeedItemsWhereInput(
          [Function(GCategoryFeedItemsWhereInputBuilder b) updates]) =
      _$GCategoryFeedItemsWhereInput;

  GFeedItemWhereInput? get FeedItem;
  static Serializer<GCategoryFeedItemsWhereInput> get serializer =>
      _$gCategoryFeedItemsWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryFeedItemsWhereInput.serializer, this) as Map<String, dynamic>);
  static GCategoryFeedItemsWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryFeedItemsWhereInput.serializer, json);
}

abstract class GCategoryFeedItemsWhereUniqueInput
    implements
        Built<GCategoryFeedItemsWhereUniqueInput,
            GCategoryFeedItemsWhereUniqueInputBuilder> {
  GCategoryFeedItemsWhereUniqueInput._();

  factory GCategoryFeedItemsWhereUniqueInput(
          [Function(GCategoryFeedItemsWhereUniqueInputBuilder b) updates]) =
      _$GCategoryFeedItemsWhereUniqueInput;

  GFeedItemWhereUniqueInput? get FeedItem;
  static Serializer<GCategoryFeedItemsWhereUniqueInput> get serializer =>
      _$gCategoryFeedItemsWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCategoryFeedItemsWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryFeedItemsWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryFeedItemsWhereUniqueInput.serializer, json);
}

abstract class GCategoryManyWhereInput
    implements Built<GCategoryManyWhereInput, GCategoryManyWhereInputBuilder> {
  GCategoryManyWhereInput._();

  factory GCategoryManyWhereInput(
          [Function(GCategoryManyWhereInputBuilder b) updates]) =
      _$GCategoryManyWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GCategoryWhereInput>? get AND;
  BuiltList<GCategoryWhereInput>? get OR;
  BuiltList<GCategoryWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get mainImage;
  GCategoryTitle? get categoryTitle;
  GCategoryTitle? get categoryTitle_not;
  BuiltList<GCategoryTitle>? get categoryTitle_in;
  BuiltList<GCategoryTitle>? get categoryTitle_not_in;
  static Serializer<GCategoryManyWhereInput> get serializer =>
      _$gCategoryManyWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryManyWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryManyWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryManyWhereInput.serializer, json);
}

class GCategoryOrderByInput extends EnumClass {
  const GCategoryOrderByInput._(String name) : super(name);

  static const GCategoryOrderByInput id_ASC = _$gCategoryOrderByInputid_ASC;

  static const GCategoryOrderByInput id_DESC = _$gCategoryOrderByInputid_DESC;

  static const GCategoryOrderByInput createdAt_ASC =
      _$gCategoryOrderByInputcreatedAt_ASC;

  static const GCategoryOrderByInput createdAt_DESC =
      _$gCategoryOrderByInputcreatedAt_DESC;

  static const GCategoryOrderByInput updatedAt_ASC =
      _$gCategoryOrderByInputupdatedAt_ASC;

  static const GCategoryOrderByInput updatedAt_DESC =
      _$gCategoryOrderByInputupdatedAt_DESC;

  static const GCategoryOrderByInput publishedAt_ASC =
      _$gCategoryOrderByInputpublishedAt_ASC;

  static const GCategoryOrderByInput publishedAt_DESC =
      _$gCategoryOrderByInputpublishedAt_DESC;

  static const GCategoryOrderByInput title_ASC =
      _$gCategoryOrderByInputtitle_ASC;

  static const GCategoryOrderByInput title_DESC =
      _$gCategoryOrderByInputtitle_DESC;

  static const GCategoryOrderByInput categoryTitle_ASC =
      _$gCategoryOrderByInputcategoryTitle_ASC;

  static const GCategoryOrderByInput categoryTitle_DESC =
      _$gCategoryOrderByInputcategoryTitle_DESC;

  static Serializer<GCategoryOrderByInput> get serializer =>
      _$gCategoryOrderByInputSerializer;
  static BuiltSet<GCategoryOrderByInput> get values =>
      _$gCategoryOrderByInputValues;
  static GCategoryOrderByInput valueOf(String name) =>
      _$gCategoryOrderByInputValueOf(name);
}

class GCategoryTitle extends EnumClass {
  const GCategoryTitle._(String name) : super(name);

  static const GCategoryTitle Exercises = _$gCategoryTitleExercises;

  static const GCategoryTitle Testimonials = _$gCategoryTitleTestimonials;

  static Serializer<GCategoryTitle> get serializer =>
      _$gCategoryTitleSerializer;
  static BuiltSet<GCategoryTitle> get values => _$gCategoryTitleValues;
  static GCategoryTitle valueOf(String name) => _$gCategoryTitleValueOf(name);
}

abstract class GCategoryUpdateInput
    implements Built<GCategoryUpdateInput, GCategoryUpdateInputBuilder> {
  GCategoryUpdateInput._();

  factory GCategoryUpdateInput(
          [Function(GCategoryUpdateInputBuilder b) updates]) =
      _$GCategoryUpdateInput;

  String? get title;
  GAssetUpdateOneInlineInput? get mainImage;
  GCategoryTitle? get categoryTitle;
  GCategoryFeedItemsUpdateManyInlineInput? get feedItems;
  static Serializer<GCategoryUpdateInput> get serializer =>
      _$gCategoryUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryUpdateInput.serializer, json);
}

abstract class GCategoryUpdateManyInlineInput
    implements
        Built<GCategoryUpdateManyInlineInput,
            GCategoryUpdateManyInlineInputBuilder> {
  GCategoryUpdateManyInlineInput._();

  factory GCategoryUpdateManyInlineInput(
          [Function(GCategoryUpdateManyInlineInputBuilder b) updates]) =
      _$GCategoryUpdateManyInlineInput;

  BuiltList<GCategoryCreateInput>? get create;
  BuiltList<GCategoryConnectInput>? get connect;
  BuiltList<GCategoryWhereUniqueInput>? get set;
  BuiltList<GCategoryUpdateWithNestedWhereUniqueInput>? get updateIt;
  BuiltList<GCategoryUpsertWithNestedWhereUniqueInput>? get upsert;
  BuiltList<GCategoryWhereUniqueInput>? get disconnect;
  BuiltList<GCategoryWhereUniqueInput>? get delete;
  static Serializer<GCategoryUpdateManyInlineInput> get serializer =>
      _$gCategoryUpdateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryUpdateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GCategoryUpdateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryUpdateManyInlineInput.serializer, json);
}

abstract class GCategoryUpdateManyInput
    implements
        Built<GCategoryUpdateManyInput, GCategoryUpdateManyInputBuilder> {
  GCategoryUpdateManyInput._();

  factory GCategoryUpdateManyInput(
          [Function(GCategoryUpdateManyInputBuilder b) updates]) =
      _$GCategoryUpdateManyInput;

  String? get title;
  GCategoryTitle? get categoryTitle;
  static Serializer<GCategoryUpdateManyInput> get serializer =>
      _$gCategoryUpdateManyInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryUpdateManyInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryUpdateManyInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryUpdateManyInput.serializer, json);
}

abstract class GCategoryUpdateManyWithNestedWhereInput
    implements
        Built<GCategoryUpdateManyWithNestedWhereInput,
            GCategoryUpdateManyWithNestedWhereInputBuilder> {
  GCategoryUpdateManyWithNestedWhereInput._();

  factory GCategoryUpdateManyWithNestedWhereInput(
      [Function(GCategoryUpdateManyWithNestedWhereInputBuilder b)
          updates]) = _$GCategoryUpdateManyWithNestedWhereInput;

  GCategoryWhereInput get where;
  GCategoryUpdateManyInput get data;
  static Serializer<GCategoryUpdateManyWithNestedWhereInput> get serializer =>
      _$gCategoryUpdateManyWithNestedWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryUpdateManyWithNestedWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryUpdateManyWithNestedWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryUpdateManyWithNestedWhereInput.serializer, json);
}

abstract class GCategoryUpdateOneInlineInput
    implements
        Built<GCategoryUpdateOneInlineInput,
            GCategoryUpdateOneInlineInputBuilder> {
  GCategoryUpdateOneInlineInput._();

  factory GCategoryUpdateOneInlineInput(
          [Function(GCategoryUpdateOneInlineInputBuilder b) updates]) =
      _$GCategoryUpdateOneInlineInput;

  GCategoryCreateInput? get create;
  GCategoryUpdateWithNestedWhereUniqueInput? get updateIt;
  GCategoryUpsertWithNestedWhereUniqueInput? get upsert;
  GCategoryWhereUniqueInput? get connect;
  bool? get disconnect;
  bool? get delete;
  static Serializer<GCategoryUpdateOneInlineInput> get serializer =>
      _$gCategoryUpdateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCategoryUpdateOneInlineInput.serializer, this) as Map<String, dynamic>);
  static GCategoryUpdateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryUpdateOneInlineInput.serializer, json);
}

abstract class GCategoryUpdateWithNestedWhereUniqueInput
    implements
        Built<GCategoryUpdateWithNestedWhereUniqueInput,
            GCategoryUpdateWithNestedWhereUniqueInputBuilder> {
  GCategoryUpdateWithNestedWhereUniqueInput._();

  factory GCategoryUpdateWithNestedWhereUniqueInput(
      [Function(GCategoryUpdateWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GCategoryUpdateWithNestedWhereUniqueInput;

  GCategoryWhereUniqueInput get where;
  GCategoryUpdateInput get data;
  static Serializer<GCategoryUpdateWithNestedWhereUniqueInput> get serializer =>
      _$gCategoryUpdateWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryUpdateWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryUpdateWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryUpdateWithNestedWhereUniqueInput.serializer, json);
}

abstract class GCategoryUpsertInput
    implements Built<GCategoryUpsertInput, GCategoryUpsertInputBuilder> {
  GCategoryUpsertInput._();

  factory GCategoryUpsertInput(
          [Function(GCategoryUpsertInputBuilder b) updates]) =
      _$GCategoryUpsertInput;

  GCategoryCreateInput get create;
  GCategoryUpdateInput get updateIt;
  static Serializer<GCategoryUpsertInput> get serializer =>
      _$gCategoryUpsertInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryUpsertInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryUpsertInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryUpsertInput.serializer, json);
}

abstract class GCategoryUpsertWithNestedWhereUniqueInput
    implements
        Built<GCategoryUpsertWithNestedWhereUniqueInput,
            GCategoryUpsertWithNestedWhereUniqueInputBuilder> {
  GCategoryUpsertWithNestedWhereUniqueInput._();

  factory GCategoryUpsertWithNestedWhereUniqueInput(
      [Function(GCategoryUpsertWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GCategoryUpsertWithNestedWhereUniqueInput;

  GCategoryWhereUniqueInput get where;
  GCategoryUpsertInput get data;
  static Serializer<GCategoryUpsertWithNestedWhereUniqueInput> get serializer =>
      _$gCategoryUpsertWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCategoryUpsertWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GCategoryUpsertWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCategoryUpsertWithNestedWhereUniqueInput.serializer, json);
}

abstract class GCategoryWhereInput
    implements Built<GCategoryWhereInput, GCategoryWhereInputBuilder> {
  GCategoryWhereInput._();

  factory GCategoryWhereInput(
      [Function(GCategoryWhereInputBuilder b) updates]) = _$GCategoryWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GCategoryWhereInput>? get AND;
  BuiltList<GCategoryWhereInput>? get OR;
  BuiltList<GCategoryWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get mainImage;
  GCategoryTitle? get categoryTitle;
  GCategoryTitle? get categoryTitle_not;
  BuiltList<GCategoryTitle>? get categoryTitle_in;
  BuiltList<GCategoryTitle>? get categoryTitle_not_in;
  static Serializer<GCategoryWhereInput> get serializer =>
      _$gCategoryWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCategoryWhereInput.serializer, json);
}

abstract class GCategoryWhereUniqueInput
    implements
        Built<GCategoryWhereUniqueInput, GCategoryWhereUniqueInputBuilder> {
  GCategoryWhereUniqueInput._();

  factory GCategoryWhereUniqueInput(
          [Function(GCategoryWhereUniqueInputBuilder b) updates]) =
      _$GCategoryWhereUniqueInput;

  String? get id;
  static Serializer<GCategoryWhereUniqueInput> get serializer =>
      _$gCategoryWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCategoryWhereUniqueInput.serializer, this)
          as Map<String, dynamic>);
  static GCategoryWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCategoryWhereUniqueInput.serializer, json);
}

abstract class GColorInput implements Built<GColorInput, GColorInputBuilder> {
  GColorInput._();

  factory GColorInput([Function(GColorInputBuilder b) updates]) = _$GColorInput;

  String? get hex;
  GRGBAInput? get rgba;
  static Serializer<GColorInput> get serializer => _$gColorInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GColorInput.serializer, this)
          as Map<String, dynamic>);
  static GColorInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GColorInput.serializer, json);
}

abstract class GConnectPositionInput
    implements Built<GConnectPositionInput, GConnectPositionInputBuilder> {
  GConnectPositionInput._();

  factory GConnectPositionInput(
          [Function(GConnectPositionInputBuilder b) updates]) =
      _$GConnectPositionInput;

  String? get after;
  String? get before;
  bool? get start;
  bool? get end;
  static Serializer<GConnectPositionInput> get serializer =>
      _$gConnectPositionInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GConnectPositionInput.serializer, this)
          as Map<String, dynamic>);
  static GConnectPositionInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GConnectPositionInput.serializer, json);
}

class GCycle extends EnumClass {
  const GCycle._(String name) : super(name);

  static const GCycle one = _$gCycleone;

  static const GCycle two = _$gCycletwo;

  static const GCycle three = _$gCyclethree;

  static Serializer<GCycle> get serializer => _$gCycleSerializer;
  static BuiltSet<GCycle> get values => _$gCycleValues;
  static GCycle valueOf(String name) => _$gCycleValueOf(name);
}

class GDocumentFileTypes extends EnumClass {
  const GDocumentFileTypes._(String name) : super(name);

  static const GDocumentFileTypes jpg = _$gDocumentFileTypesjpg;

  static const GDocumentFileTypes odp = _$gDocumentFileTypesodp;

  static const GDocumentFileTypes ods = _$gDocumentFileTypesods;

  static const GDocumentFileTypes odt = _$gDocumentFileTypesodt;

  static const GDocumentFileTypes png = _$gDocumentFileTypespng;

  static const GDocumentFileTypes svg = _$gDocumentFileTypessvg;

  static const GDocumentFileTypes txt = _$gDocumentFileTypestxt;

  static const GDocumentFileTypes webp = _$gDocumentFileTypeswebp;

  static const GDocumentFileTypes docx = _$gDocumentFileTypesdocx;

  static const GDocumentFileTypes pdf = _$gDocumentFileTypespdf;

  static const GDocumentFileTypes html = _$gDocumentFileTypeshtml;

  static const GDocumentFileTypes doc = _$gDocumentFileTypesdoc;

  static const GDocumentFileTypes xlsx = _$gDocumentFileTypesxlsx;

  static const GDocumentFileTypes xls = _$gDocumentFileTypesxls;

  static const GDocumentFileTypes pptx = _$gDocumentFileTypespptx;

  static const GDocumentFileTypes ppt = _$gDocumentFileTypesppt;

  static Serializer<GDocumentFileTypes> get serializer =>
      _$gDocumentFileTypesSerializer;
  static BuiltSet<GDocumentFileTypes> get values => _$gDocumentFileTypesValues;
  static GDocumentFileTypes valueOf(String name) =>
      _$gDocumentFileTypesValueOf(name);
}

abstract class GDocumentOutputInput
    implements Built<GDocumentOutputInput, GDocumentOutputInputBuilder> {
  GDocumentOutputInput._();

  factory GDocumentOutputInput(
          [Function(GDocumentOutputInputBuilder b) updates]) =
      _$GDocumentOutputInput;

  GDocumentFileTypes? get format;
  static Serializer<GDocumentOutputInput> get serializer =>
      _$gDocumentOutputInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDocumentOutputInput.serializer, this)
          as Map<String, dynamic>);
  static GDocumentOutputInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDocumentOutputInput.serializer, json);
}

abstract class GDocumentTransformationInput
    implements
        Built<GDocumentTransformationInput,
            GDocumentTransformationInputBuilder> {
  GDocumentTransformationInput._();

  factory GDocumentTransformationInput(
          [Function(GDocumentTransformationInputBuilder b) updates]) =
      _$GDocumentTransformationInput;

  GDocumentOutputInput? get output;
  static Serializer<GDocumentTransformationInput> get serializer =>
      _$gDocumentTransformationInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GDocumentTransformationInput.serializer, this) as Map<String, dynamic>);
  static GDocumentTransformationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDocumentTransformationInput.serializer, json);
}

abstract class GFeedItemCategoryConnectInput
    implements
        Built<GFeedItemCategoryConnectInput,
            GFeedItemCategoryConnectInputBuilder> {
  GFeedItemCategoryConnectInput._();

  factory GFeedItemCategoryConnectInput(
          [Function(GFeedItemCategoryConnectInputBuilder b) updates]) =
      _$GFeedItemCategoryConnectInput;

  GFeedItemCategoryWhereUniqueInput get where;
  GConnectPositionInput? get position;
  static Serializer<GFeedItemCategoryConnectInput> get serializer =>
      _$gFeedItemCategoryConnectInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemCategoryConnectInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemCategoryConnectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryConnectInput.serializer, json);
}

abstract class GFeedItemCategoryCreateInput
    implements
        Built<GFeedItemCategoryCreateInput,
            GFeedItemCategoryCreateInputBuilder> {
  GFeedItemCategoryCreateInput._();

  factory GFeedItemCategoryCreateInput(
          [Function(GFeedItemCategoryCreateInputBuilder b) updates]) =
      _$GFeedItemCategoryCreateInput;

  DateTime? get createdAt;
  DateTime? get updatedAt;
  String? get title;
  GAssetCreateOneInlineInput get mainImage;
  GCategoryTitle? get categoryTitle;
  static Serializer<GFeedItemCategoryCreateInput> get serializer =>
      _$gFeedItemCategoryCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemCategoryCreateInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemCategoryCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryCreateInput.serializer, json);
}

abstract class GFeedItemCategoryCreateManyInlineInput
    implements
        Built<GFeedItemCategoryCreateManyInlineInput,
            GFeedItemCategoryCreateManyInlineInputBuilder> {
  GFeedItemCategoryCreateManyInlineInput._();

  factory GFeedItemCategoryCreateManyInlineInput(
          [Function(GFeedItemCategoryCreateManyInlineInputBuilder b) updates]) =
      _$GFeedItemCategoryCreateManyInlineInput;

  BuiltList<GFeedItemCategoryCreateInput>? get create;
  BuiltList<GFeedItemCategoryWhereUniqueInput>? get connect;
  static Serializer<GFeedItemCategoryCreateManyInlineInput> get serializer =>
      _$gFeedItemCategoryCreateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemCategoryCreateManyInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryCreateManyInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemCategoryCreateManyInlineInput.serializer, json);
}

abstract class GFeedItemCategoryCreateOneInlineInput
    implements
        Built<GFeedItemCategoryCreateOneInlineInput,
            GFeedItemCategoryCreateOneInlineInputBuilder> {
  GFeedItemCategoryCreateOneInlineInput._();

  factory GFeedItemCategoryCreateOneInlineInput(
          [Function(GFeedItemCategoryCreateOneInlineInputBuilder b) updates]) =
      _$GFeedItemCategoryCreateOneInlineInput;

  GFeedItemCategoryCreateInput? get create;
  GFeedItemCategoryWhereUniqueInput? get connect;
  static Serializer<GFeedItemCategoryCreateOneInlineInput> get serializer =>
      _$gFeedItemCategoryCreateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedItemCategoryCreateOneInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryCreateOneInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemCategoryCreateOneInlineInput.serializer, json);
}

abstract class GFeedItemCategoryManyWhereInput
    implements
        Built<GFeedItemCategoryManyWhereInput,
            GFeedItemCategoryManyWhereInputBuilder> {
  GFeedItemCategoryManyWhereInput._();

  factory GFeedItemCategoryManyWhereInput(
          [Function(GFeedItemCategoryManyWhereInputBuilder b) updates]) =
      _$GFeedItemCategoryManyWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GFeedItemCategoryWhereInput>? get AND;
  BuiltList<GFeedItemCategoryWhereInput>? get OR;
  BuiltList<GFeedItemCategoryWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get mainImage;
  GCategoryTitle? get categoryTitle;
  GCategoryTitle? get categoryTitle_not;
  BuiltList<GCategoryTitle>? get categoryTitle_in;
  BuiltList<GCategoryTitle>? get categoryTitle_not_in;
  static Serializer<GFeedItemCategoryManyWhereInput> get serializer =>
      _$gFeedItemCategoryManyWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedItemCategoryManyWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryManyWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryManyWhereInput.serializer, json);
}

class GFeedItemCategoryOrderByInput extends EnumClass {
  const GFeedItemCategoryOrderByInput._(String name) : super(name);

  static const GFeedItemCategoryOrderByInput id_ASC =
      _$gFeedItemCategoryOrderByInputid_ASC;

  static const GFeedItemCategoryOrderByInput id_DESC =
      _$gFeedItemCategoryOrderByInputid_DESC;

  static const GFeedItemCategoryOrderByInput createdAt_ASC =
      _$gFeedItemCategoryOrderByInputcreatedAt_ASC;

  static const GFeedItemCategoryOrderByInput createdAt_DESC =
      _$gFeedItemCategoryOrderByInputcreatedAt_DESC;

  static const GFeedItemCategoryOrderByInput updatedAt_ASC =
      _$gFeedItemCategoryOrderByInputupdatedAt_ASC;

  static const GFeedItemCategoryOrderByInput updatedAt_DESC =
      _$gFeedItemCategoryOrderByInputupdatedAt_DESC;

  static const GFeedItemCategoryOrderByInput publishedAt_ASC =
      _$gFeedItemCategoryOrderByInputpublishedAt_ASC;

  static const GFeedItemCategoryOrderByInput publishedAt_DESC =
      _$gFeedItemCategoryOrderByInputpublishedAt_DESC;

  static const GFeedItemCategoryOrderByInput title_ASC =
      _$gFeedItemCategoryOrderByInputtitle_ASC;

  static const GFeedItemCategoryOrderByInput title_DESC =
      _$gFeedItemCategoryOrderByInputtitle_DESC;

  static const GFeedItemCategoryOrderByInput categoryTitle_ASC =
      _$gFeedItemCategoryOrderByInputcategoryTitle_ASC;

  static const GFeedItemCategoryOrderByInput categoryTitle_DESC =
      _$gFeedItemCategoryOrderByInputcategoryTitle_DESC;

  static Serializer<GFeedItemCategoryOrderByInput> get serializer =>
      _$gFeedItemCategoryOrderByInputSerializer;
  static BuiltSet<GFeedItemCategoryOrderByInput> get values =>
      _$gFeedItemCategoryOrderByInputValues;
  static GFeedItemCategoryOrderByInput valueOf(String name) =>
      _$gFeedItemCategoryOrderByInputValueOf(name);
}

abstract class GFeedItemCategoryUpdateInput
    implements
        Built<GFeedItemCategoryUpdateInput,
            GFeedItemCategoryUpdateInputBuilder> {
  GFeedItemCategoryUpdateInput._();

  factory GFeedItemCategoryUpdateInput(
          [Function(GFeedItemCategoryUpdateInputBuilder b) updates]) =
      _$GFeedItemCategoryUpdateInput;

  String? get title;
  GAssetUpdateOneInlineInput? get mainImage;
  GCategoryTitle? get categoryTitle;
  static Serializer<GFeedItemCategoryUpdateInput> get serializer =>
      _$gFeedItemCategoryUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemCategoryUpdateInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemCategoryUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryUpdateInput.serializer, json);
}

abstract class GFeedItemCategoryUpdateManyInlineInput
    implements
        Built<GFeedItemCategoryUpdateManyInlineInput,
            GFeedItemCategoryUpdateManyInlineInputBuilder> {
  GFeedItemCategoryUpdateManyInlineInput._();

  factory GFeedItemCategoryUpdateManyInlineInput(
          [Function(GFeedItemCategoryUpdateManyInlineInputBuilder b) updates]) =
      _$GFeedItemCategoryUpdateManyInlineInput;

  BuiltList<GFeedItemCategoryCreateInput>? get create;
  BuiltList<GFeedItemCategoryConnectInput>? get connect;
  BuiltList<GFeedItemCategoryWhereUniqueInput>? get set;
  BuiltList<GFeedItemCategoryUpdateWithNestedWhereUniqueInput>? get updateIt;
  BuiltList<GFeedItemCategoryUpsertWithNestedWhereUniqueInput>? get upsert;
  BuiltList<GFeedItemCategoryWhereUniqueInput>? get disconnect;
  BuiltList<GFeedItemCategoryWhereUniqueInput>? get delete;
  static Serializer<GFeedItemCategoryUpdateManyInlineInput> get serializer =>
      _$gFeedItemCategoryUpdateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemCategoryUpdateManyInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryUpdateManyInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemCategoryUpdateManyInlineInput.serializer, json);
}

abstract class GFeedItemCategoryUpdateManyInput
    implements
        Built<GFeedItemCategoryUpdateManyInput,
            GFeedItemCategoryUpdateManyInputBuilder> {
  GFeedItemCategoryUpdateManyInput._();

  factory GFeedItemCategoryUpdateManyInput(
          [Function(GFeedItemCategoryUpdateManyInputBuilder b) updates]) =
      _$GFeedItemCategoryUpdateManyInput;

  String? get title;
  GCategoryTitle? get categoryTitle;
  static Serializer<GFeedItemCategoryUpdateManyInput> get serializer =>
      _$gFeedItemCategoryUpdateManyInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedItemCategoryUpdateManyInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryUpdateManyInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryUpdateManyInput.serializer, json);
}

abstract class GFeedItemCategoryUpdateManyWithNestedWhereInput
    implements
        Built<GFeedItemCategoryUpdateManyWithNestedWhereInput,
            GFeedItemCategoryUpdateManyWithNestedWhereInputBuilder> {
  GFeedItemCategoryUpdateManyWithNestedWhereInput._();

  factory GFeedItemCategoryUpdateManyWithNestedWhereInput(
      [Function(GFeedItemCategoryUpdateManyWithNestedWhereInputBuilder b)
          updates]) = _$GFeedItemCategoryUpdateManyWithNestedWhereInput;

  GFeedItemCategoryWhereInput get where;
  GFeedItemCategoryUpdateManyInput get data;
  static Serializer<GFeedItemCategoryUpdateManyWithNestedWhereInput>
      get serializer =>
          _$gFeedItemCategoryUpdateManyWithNestedWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemCategoryUpdateManyWithNestedWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryUpdateManyWithNestedWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemCategoryUpdateManyWithNestedWhereInput.serializer, json);
}

abstract class GFeedItemCategoryUpdateOneInlineInput
    implements
        Built<GFeedItemCategoryUpdateOneInlineInput,
            GFeedItemCategoryUpdateOneInlineInputBuilder> {
  GFeedItemCategoryUpdateOneInlineInput._();

  factory GFeedItemCategoryUpdateOneInlineInput(
          [Function(GFeedItemCategoryUpdateOneInlineInputBuilder b) updates]) =
      _$GFeedItemCategoryUpdateOneInlineInput;

  GFeedItemCategoryCreateInput? get create;
  GFeedItemCategoryUpdateWithNestedWhereUniqueInput? get updateIt;
  GFeedItemCategoryUpsertWithNestedWhereUniqueInput? get upsert;
  GFeedItemCategoryWhereUniqueInput? get connect;
  bool? get disconnect;
  bool? get delete;
  static Serializer<GFeedItemCategoryUpdateOneInlineInput> get serializer =>
      _$gFeedItemCategoryUpdateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedItemCategoryUpdateOneInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryUpdateOneInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemCategoryUpdateOneInlineInput.serializer, json);
}

abstract class GFeedItemCategoryUpdateWithNestedWhereUniqueInput
    implements
        Built<GFeedItemCategoryUpdateWithNestedWhereUniqueInput,
            GFeedItemCategoryUpdateWithNestedWhereUniqueInputBuilder> {
  GFeedItemCategoryUpdateWithNestedWhereUniqueInput._();

  factory GFeedItemCategoryUpdateWithNestedWhereUniqueInput(
      [Function(GFeedItemCategoryUpdateWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GFeedItemCategoryUpdateWithNestedWhereUniqueInput;

  GFeedItemCategoryWhereUniqueInput get where;
  GFeedItemCategoryUpdateInput get data;
  static Serializer<GFeedItemCategoryUpdateWithNestedWhereUniqueInput>
      get serializer =>
          _$gFeedItemCategoryUpdateWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemCategoryUpdateWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryUpdateWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemCategoryUpdateWithNestedWhereUniqueInput.serializer, json);
}

abstract class GFeedItemCategoryUpsertInput
    implements
        Built<GFeedItemCategoryUpsertInput,
            GFeedItemCategoryUpsertInputBuilder> {
  GFeedItemCategoryUpsertInput._();

  factory GFeedItemCategoryUpsertInput(
          [Function(GFeedItemCategoryUpsertInputBuilder b) updates]) =
      _$GFeedItemCategoryUpsertInput;

  GFeedItemCategoryCreateInput get create;
  GFeedItemCategoryUpdateInput get updateIt;
  static Serializer<GFeedItemCategoryUpsertInput> get serializer =>
      _$gFeedItemCategoryUpsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemCategoryUpsertInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemCategoryUpsertInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryUpsertInput.serializer, json);
}

abstract class GFeedItemCategoryUpsertWithNestedWhereUniqueInput
    implements
        Built<GFeedItemCategoryUpsertWithNestedWhereUniqueInput,
            GFeedItemCategoryUpsertWithNestedWhereUniqueInputBuilder> {
  GFeedItemCategoryUpsertWithNestedWhereUniqueInput._();

  factory GFeedItemCategoryUpsertWithNestedWhereUniqueInput(
      [Function(GFeedItemCategoryUpsertWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GFeedItemCategoryUpsertWithNestedWhereUniqueInput;

  GFeedItemCategoryWhereUniqueInput get where;
  GFeedItemCategoryUpsertInput get data;
  static Serializer<GFeedItemCategoryUpsertWithNestedWhereUniqueInput>
      get serializer =>
          _$gFeedItemCategoryUpsertWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemCategoryUpsertWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryUpsertWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemCategoryUpsertWithNestedWhereUniqueInput.serializer, json);
}

abstract class GFeedItemCategoryWhereInput
    implements
        Built<GFeedItemCategoryWhereInput, GFeedItemCategoryWhereInputBuilder> {
  GFeedItemCategoryWhereInput._();

  factory GFeedItemCategoryWhereInput(
          [Function(GFeedItemCategoryWhereInputBuilder b) updates]) =
      _$GFeedItemCategoryWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GFeedItemCategoryWhereInput>? get AND;
  BuiltList<GFeedItemCategoryWhereInput>? get OR;
  BuiltList<GFeedItemCategoryWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get mainImage;
  GCategoryTitle? get categoryTitle;
  GCategoryTitle? get categoryTitle_not;
  BuiltList<GCategoryTitle>? get categoryTitle_in;
  BuiltList<GCategoryTitle>? get categoryTitle_not_in;
  static Serializer<GFeedItemCategoryWhereInput> get serializer =>
      _$gFeedItemCategoryWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemCategoryWhereInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemCategoryWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryWhereInput.serializer, json);
}

abstract class GFeedItemCategoryWhereUniqueInput
    implements
        Built<GFeedItemCategoryWhereUniqueInput,
            GFeedItemCategoryWhereUniqueInputBuilder> {
  GFeedItemCategoryWhereUniqueInput._();

  factory GFeedItemCategoryWhereUniqueInput(
          [Function(GFeedItemCategoryWhereUniqueInputBuilder b) updates]) =
      _$GFeedItemCategoryWhereUniqueInput;

  String? get id;
  static Serializer<GFeedItemCategoryWhereUniqueInput> get serializer =>
      _$gFeedItemCategoryWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFeedItemCategoryWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemCategoryWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCategoryWhereUniqueInput.serializer, json);
}

abstract class GFeedItemConnectInput
    implements Built<GFeedItemConnectInput, GFeedItemConnectInputBuilder> {
  GFeedItemConnectInput._();

  factory GFeedItemConnectInput(
          [Function(GFeedItemConnectInputBuilder b) updates]) =
      _$GFeedItemConnectInput;

  GFeedItemWhereUniqueInput get where;
  GConnectPositionInput? get position;
  static Serializer<GFeedItemConnectInput> get serializer =>
      _$gFeedItemConnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemConnectInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemConnectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedItemConnectInput.serializer, json);
}

abstract class GFeedItemCreateInput
    implements Built<GFeedItemCreateInput, GFeedItemCreateInputBuilder> {
  GFeedItemCreateInput._();

  factory GFeedItemCreateInput(
          [Function(GFeedItemCreateInputBuilder b) updates]) =
      _$GFeedItemCreateInput;

  DateTime? get createdAt;
  DateTime? get updatedAt;
  String? get title;
  String? get subtitle;
  String? get description;
  String? get mainContent;
  GAssetCreateOneInlineInput? get mainImage;
  GAssetCreateOneInlineInput? get video;
  GCategoryCreateManyInlineInput? get categories;
  static Serializer<GFeedItemCreateInput> get serializer =>
      _$gFeedItemCreateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemCreateInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedItemCreateInput.serializer, json);
}

abstract class GFeedItemCreateManyInlineInput
    implements
        Built<GFeedItemCreateManyInlineInput,
            GFeedItemCreateManyInlineInputBuilder> {
  GFeedItemCreateManyInlineInput._();

  factory GFeedItemCreateManyInlineInput(
          [Function(GFeedItemCreateManyInlineInputBuilder b) updates]) =
      _$GFeedItemCreateManyInlineInput;

  BuiltList<GFeedItemCreateInput>? get create;
  BuiltList<GFeedItemWhereUniqueInput>? get connect;
  static Serializer<GFeedItemCreateManyInlineInput> get serializer =>
      _$gFeedItemCreateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemCreateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemCreateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCreateManyInlineInput.serializer, json);
}

abstract class GFeedItemCreateOneInlineInput
    implements
        Built<GFeedItemCreateOneInlineInput,
            GFeedItemCreateOneInlineInputBuilder> {
  GFeedItemCreateOneInlineInput._();

  factory GFeedItemCreateOneInlineInput(
          [Function(GFeedItemCreateOneInlineInputBuilder b) updates]) =
      _$GFeedItemCreateOneInlineInput;

  GFeedItemCreateInput? get create;
  GFeedItemWhereUniqueInput? get connect;
  static Serializer<GFeedItemCreateOneInlineInput> get serializer =>
      _$gFeedItemCreateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemCreateOneInlineInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemCreateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemCreateOneInlineInput.serializer, json);
}

abstract class GFeedItemManyWhereInput
    implements Built<GFeedItemManyWhereInput, GFeedItemManyWhereInputBuilder> {
  GFeedItemManyWhereInput._();

  factory GFeedItemManyWhereInput(
          [Function(GFeedItemManyWhereInputBuilder b) updates]) =
      _$GFeedItemManyWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GFeedItemWhereInput>? get AND;
  BuiltList<GFeedItemWhereInput>? get OR;
  BuiltList<GFeedItemWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  String? get subtitle;
  String? get subtitle_not;
  BuiltList<String>? get subtitle_in;
  BuiltList<String>? get subtitle_not_in;
  String? get subtitle_contains;
  String? get subtitle_not_contains;
  String? get subtitle_starts_with;
  String? get subtitle_not_starts_with;
  String? get subtitle_ends_with;
  String? get subtitle_not_ends_with;
  String? get description;
  String? get description_not;
  BuiltList<String>? get description_in;
  BuiltList<String>? get description_not_in;
  String? get description_contains;
  String? get description_not_contains;
  String? get description_starts_with;
  String? get description_not_starts_with;
  String? get description_ends_with;
  String? get description_not_ends_with;
  String? get mainContent;
  String? get mainContent_not;
  BuiltList<String>? get mainContent_in;
  BuiltList<String>? get mainContent_not_in;
  String? get mainContent_contains;
  String? get mainContent_not_contains;
  String? get mainContent_starts_with;
  String? get mainContent_not_starts_with;
  String? get mainContent_ends_with;
  String? get mainContent_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get mainImage;
  GAssetWhereInput? get video;
  GCategoryWhereInput? get categories_every;
  GCategoryWhereInput? get categories_some;
  GCategoryWhereInput? get categories_none;
  static Serializer<GFeedItemManyWhereInput> get serializer =>
      _$gFeedItemManyWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemManyWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemManyWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedItemManyWhereInput.serializer, json);
}

class GFeedItemOrderByInput extends EnumClass {
  const GFeedItemOrderByInput._(String name) : super(name);

  static const GFeedItemOrderByInput id_ASC = _$gFeedItemOrderByInputid_ASC;

  static const GFeedItemOrderByInput id_DESC = _$gFeedItemOrderByInputid_DESC;

  static const GFeedItemOrderByInput createdAt_ASC =
      _$gFeedItemOrderByInputcreatedAt_ASC;

  static const GFeedItemOrderByInput createdAt_DESC =
      _$gFeedItemOrderByInputcreatedAt_DESC;

  static const GFeedItemOrderByInput updatedAt_ASC =
      _$gFeedItemOrderByInputupdatedAt_ASC;

  static const GFeedItemOrderByInput updatedAt_DESC =
      _$gFeedItemOrderByInputupdatedAt_DESC;

  static const GFeedItemOrderByInput publishedAt_ASC =
      _$gFeedItemOrderByInputpublishedAt_ASC;

  static const GFeedItemOrderByInput publishedAt_DESC =
      _$gFeedItemOrderByInputpublishedAt_DESC;

  static const GFeedItemOrderByInput title_ASC =
      _$gFeedItemOrderByInputtitle_ASC;

  static const GFeedItemOrderByInput title_DESC =
      _$gFeedItemOrderByInputtitle_DESC;

  static const GFeedItemOrderByInput subtitle_ASC =
      _$gFeedItemOrderByInputsubtitle_ASC;

  static const GFeedItemOrderByInput subtitle_DESC =
      _$gFeedItemOrderByInputsubtitle_DESC;

  static const GFeedItemOrderByInput description_ASC =
      _$gFeedItemOrderByInputdescription_ASC;

  static const GFeedItemOrderByInput description_DESC =
      _$gFeedItemOrderByInputdescription_DESC;

  static const GFeedItemOrderByInput mainContent_ASC =
      _$gFeedItemOrderByInputmainContent_ASC;

  static const GFeedItemOrderByInput mainContent_DESC =
      _$gFeedItemOrderByInputmainContent_DESC;

  static Serializer<GFeedItemOrderByInput> get serializer =>
      _$gFeedItemOrderByInputSerializer;
  static BuiltSet<GFeedItemOrderByInput> get values =>
      _$gFeedItemOrderByInputValues;
  static GFeedItemOrderByInput valueOf(String name) =>
      _$gFeedItemOrderByInputValueOf(name);
}

abstract class GFeedItemUpdateInput
    implements Built<GFeedItemUpdateInput, GFeedItemUpdateInputBuilder> {
  GFeedItemUpdateInput._();

  factory GFeedItemUpdateInput(
          [Function(GFeedItemUpdateInputBuilder b) updates]) =
      _$GFeedItemUpdateInput;

  String? get title;
  String? get subtitle;
  String? get description;
  String? get mainContent;
  GAssetUpdateOneInlineInput? get mainImage;
  GAssetUpdateOneInlineInput? get video;
  GCategoryUpdateManyInlineInput? get categories;
  static Serializer<GFeedItemUpdateInput> get serializer =>
      _$gFeedItemUpdateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemUpdateInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedItemUpdateInput.serializer, json);
}

abstract class GFeedItemUpdateManyInlineInput
    implements
        Built<GFeedItemUpdateManyInlineInput,
            GFeedItemUpdateManyInlineInputBuilder> {
  GFeedItemUpdateManyInlineInput._();

  factory GFeedItemUpdateManyInlineInput(
          [Function(GFeedItemUpdateManyInlineInputBuilder b) updates]) =
      _$GFeedItemUpdateManyInlineInput;

  BuiltList<GFeedItemCreateInput>? get create;
  BuiltList<GFeedItemConnectInput>? get connect;
  BuiltList<GFeedItemWhereUniqueInput>? get set;
  BuiltList<GFeedItemUpdateWithNestedWhereUniqueInput>? get updateIt;
  BuiltList<GFeedItemUpsertWithNestedWhereUniqueInput>? get upsert;
  BuiltList<GFeedItemWhereUniqueInput>? get disconnect;
  BuiltList<GFeedItemWhereUniqueInput>? get delete;
  static Serializer<GFeedItemUpdateManyInlineInput> get serializer =>
      _$gFeedItemUpdateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemUpdateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemUpdateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemUpdateManyInlineInput.serializer, json);
}

abstract class GFeedItemUpdateManyInput
    implements
        Built<GFeedItemUpdateManyInput, GFeedItemUpdateManyInputBuilder> {
  GFeedItemUpdateManyInput._();

  factory GFeedItemUpdateManyInput(
          [Function(GFeedItemUpdateManyInputBuilder b) updates]) =
      _$GFeedItemUpdateManyInput;

  String? get title;
  String? get subtitle;
  String? get description;
  String? get mainContent;
  static Serializer<GFeedItemUpdateManyInput> get serializer =>
      _$gFeedItemUpdateManyInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemUpdateManyInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemUpdateManyInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemUpdateManyInput.serializer, json);
}

abstract class GFeedItemUpdateManyWithNestedWhereInput
    implements
        Built<GFeedItemUpdateManyWithNestedWhereInput,
            GFeedItemUpdateManyWithNestedWhereInputBuilder> {
  GFeedItemUpdateManyWithNestedWhereInput._();

  factory GFeedItemUpdateManyWithNestedWhereInput(
      [Function(GFeedItemUpdateManyWithNestedWhereInputBuilder b)
          updates]) = _$GFeedItemUpdateManyWithNestedWhereInput;

  GFeedItemWhereInput get where;
  GFeedItemUpdateManyInput get data;
  static Serializer<GFeedItemUpdateManyWithNestedWhereInput> get serializer =>
      _$gFeedItemUpdateManyWithNestedWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemUpdateManyWithNestedWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemUpdateManyWithNestedWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemUpdateManyWithNestedWhereInput.serializer, json);
}

abstract class GFeedItemUpdateOneInlineInput
    implements
        Built<GFeedItemUpdateOneInlineInput,
            GFeedItemUpdateOneInlineInputBuilder> {
  GFeedItemUpdateOneInlineInput._();

  factory GFeedItemUpdateOneInlineInput(
          [Function(GFeedItemUpdateOneInlineInputBuilder b) updates]) =
      _$GFeedItemUpdateOneInlineInput;

  GFeedItemCreateInput? get create;
  GFeedItemUpdateWithNestedWhereUniqueInput? get updateIt;
  GFeedItemUpsertWithNestedWhereUniqueInput? get upsert;
  GFeedItemWhereUniqueInput? get connect;
  bool? get disconnect;
  bool? get delete;
  static Serializer<GFeedItemUpdateOneInlineInput> get serializer =>
      _$gFeedItemUpdateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedItemUpdateOneInlineInput.serializer, this) as Map<String, dynamic>);
  static GFeedItemUpdateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemUpdateOneInlineInput.serializer, json);
}

abstract class GFeedItemUpdateWithNestedWhereUniqueInput
    implements
        Built<GFeedItemUpdateWithNestedWhereUniqueInput,
            GFeedItemUpdateWithNestedWhereUniqueInputBuilder> {
  GFeedItemUpdateWithNestedWhereUniqueInput._();

  factory GFeedItemUpdateWithNestedWhereUniqueInput(
      [Function(GFeedItemUpdateWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GFeedItemUpdateWithNestedWhereUniqueInput;

  GFeedItemWhereUniqueInput get where;
  GFeedItemUpdateInput get data;
  static Serializer<GFeedItemUpdateWithNestedWhereUniqueInput> get serializer =>
      _$gFeedItemUpdateWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemUpdateWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemUpdateWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemUpdateWithNestedWhereUniqueInput.serializer, json);
}

abstract class GFeedItemUpsertInput
    implements Built<GFeedItemUpsertInput, GFeedItemUpsertInputBuilder> {
  GFeedItemUpsertInput._();

  factory GFeedItemUpsertInput(
          [Function(GFeedItemUpsertInputBuilder b) updates]) =
      _$GFeedItemUpsertInput;

  GFeedItemCreateInput get create;
  GFeedItemUpdateInput get updateIt;
  static Serializer<GFeedItemUpsertInput> get serializer =>
      _$gFeedItemUpsertInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemUpsertInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemUpsertInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedItemUpsertInput.serializer, json);
}

abstract class GFeedItemUpsertWithNestedWhereUniqueInput
    implements
        Built<GFeedItemUpsertWithNestedWhereUniqueInput,
            GFeedItemUpsertWithNestedWhereUniqueInputBuilder> {
  GFeedItemUpsertWithNestedWhereUniqueInput._();

  factory GFeedItemUpsertWithNestedWhereUniqueInput(
      [Function(GFeedItemUpsertWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GFeedItemUpsertWithNestedWhereUniqueInput;

  GFeedItemWhereUniqueInput get where;
  GFeedItemUpsertInput get data;
  static Serializer<GFeedItemUpsertWithNestedWhereUniqueInput> get serializer =>
      _$gFeedItemUpsertWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFeedItemUpsertWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GFeedItemUpsertWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFeedItemUpsertWithNestedWhereUniqueInput.serializer, json);
}

abstract class GFeedItemWhereInput
    implements Built<GFeedItemWhereInput, GFeedItemWhereInputBuilder> {
  GFeedItemWhereInput._();

  factory GFeedItemWhereInput(
      [Function(GFeedItemWhereInputBuilder b) updates]) = _$GFeedItemWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GFeedItemWhereInput>? get AND;
  BuiltList<GFeedItemWhereInput>? get OR;
  BuiltList<GFeedItemWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  String? get subtitle;
  String? get subtitle_not;
  BuiltList<String>? get subtitle_in;
  BuiltList<String>? get subtitle_not_in;
  String? get subtitle_contains;
  String? get subtitle_not_contains;
  String? get subtitle_starts_with;
  String? get subtitle_not_starts_with;
  String? get subtitle_ends_with;
  String? get subtitle_not_ends_with;
  String? get description;
  String? get description_not;
  BuiltList<String>? get description_in;
  BuiltList<String>? get description_not_in;
  String? get description_contains;
  String? get description_not_contains;
  String? get description_starts_with;
  String? get description_not_starts_with;
  String? get description_ends_with;
  String? get description_not_ends_with;
  String? get mainContent;
  String? get mainContent_not;
  BuiltList<String>? get mainContent_in;
  BuiltList<String>? get mainContent_not_in;
  String? get mainContent_contains;
  String? get mainContent_not_contains;
  String? get mainContent_starts_with;
  String? get mainContent_not_starts_with;
  String? get mainContent_ends_with;
  String? get mainContent_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get mainImage;
  GAssetWhereInput? get video;
  GCategoryWhereInput? get categories_every;
  GCategoryWhereInput? get categories_some;
  GCategoryWhereInput? get categories_none;
  static Serializer<GFeedItemWhereInput> get serializer =>
      _$gFeedItemWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFeedItemWhereInput.serializer, json);
}

abstract class GFeedItemWhereUniqueInput
    implements
        Built<GFeedItemWhereUniqueInput, GFeedItemWhereUniqueInputBuilder> {
  GFeedItemWhereUniqueInput._();

  factory GFeedItemWhereUniqueInput(
          [Function(GFeedItemWhereUniqueInputBuilder b) updates]) =
      _$GFeedItemWhereUniqueInput;

  String? get id;
  static Serializer<GFeedItemWhereUniqueInput> get serializer =>
      _$gFeedItemWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFeedItemWhereUniqueInput.serializer, this)
          as Map<String, dynamic>);
  static GFeedItemWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedItemWhereUniqueInput.serializer, json);
}

class GImageFit extends EnumClass {
  const GImageFit._(String name) : super(name);

  static const GImageFit clip = _$gImageFitclip;

  static const GImageFit crop = _$gImageFitcrop;

  static const GImageFit scale = _$gImageFitscale;

  static const GImageFit max = _$gImageFitmax;

  static Serializer<GImageFit> get serializer => _$gImageFitSerializer;
  static BuiltSet<GImageFit> get values => _$gImageFitValues;
  static GImageFit valueOf(String name) => _$gImageFitValueOf(name);
}

abstract class GImageResizeInput
    implements Built<GImageResizeInput, GImageResizeInputBuilder> {
  GImageResizeInput._();

  factory GImageResizeInput([Function(GImageResizeInputBuilder b) updates]) =
      _$GImageResizeInput;

  int? get width;
  int? get height;
  GImageFit? get fit;
  static Serializer<GImageResizeInput> get serializer =>
      _$gImageResizeInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GImageResizeInput.serializer, this)
          as Map<String, dynamic>);
  static GImageResizeInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GImageResizeInput.serializer, json);
}

abstract class GImageTransformationInput
    implements
        Built<GImageTransformationInput, GImageTransformationInputBuilder> {
  GImageTransformationInput._();

  factory GImageTransformationInput(
          [Function(GImageTransformationInputBuilder b) updates]) =
      _$GImageTransformationInput;

  GImageResizeInput? get resize;
  static Serializer<GImageTransformationInput> get serializer =>
      _$gImageTransformationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GImageTransformationInput.serializer, this)
          as Map<String, dynamic>);
  static GImageTransformationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GImageTransformationInput.serializer, json);
}

abstract class GInspirationItemConnectInput
    implements
        Built<GInspirationItemConnectInput,
            GInspirationItemConnectInputBuilder> {
  GInspirationItemConnectInput._();

  factory GInspirationItemConnectInput(
          [Function(GInspirationItemConnectInputBuilder b) updates]) =
      _$GInspirationItemConnectInput;

  GInspirationItemWhereUniqueInput get where;
  GConnectPositionInput? get position;
  static Serializer<GInspirationItemConnectInput> get serializer =>
      _$gInspirationItemConnectInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GInspirationItemConnectInput.serializer, this) as Map<String, dynamic>);
  static GInspirationItemConnectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemConnectInput.serializer, json);
}

abstract class GInspirationItemCreateInput
    implements
        Built<GInspirationItemCreateInput, GInspirationItemCreateInputBuilder> {
  GInspirationItemCreateInput._();

  factory GInspirationItemCreateInput(
          [Function(GInspirationItemCreateInputBuilder b) updates]) =
      _$GInspirationItemCreateInput;

  DateTime? get createdAt;
  DateTime? get updatedAt;
  String? get title;
  GAssetCreateOneInlineInput? get video;
  GAssetCreateOneInlineInput? get mainImage;
  static Serializer<GInspirationItemCreateInput> get serializer =>
      _$gInspirationItemCreateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GInspirationItemCreateInput.serializer, this) as Map<String, dynamic>);
  static GInspirationItemCreateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemCreateInput.serializer, json);
}

abstract class GInspirationItemCreateManyInlineInput
    implements
        Built<GInspirationItemCreateManyInlineInput,
            GInspirationItemCreateManyInlineInputBuilder> {
  GInspirationItemCreateManyInlineInput._();

  factory GInspirationItemCreateManyInlineInput(
          [Function(GInspirationItemCreateManyInlineInputBuilder b) updates]) =
      _$GInspirationItemCreateManyInlineInput;

  BuiltList<GInspirationItemCreateInput>? get create;
  BuiltList<GInspirationItemWhereUniqueInput>? get connect;
  static Serializer<GInspirationItemCreateManyInlineInput> get serializer =>
      _$gInspirationItemCreateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GInspirationItemCreateManyInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemCreateManyInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GInspirationItemCreateManyInlineInput.serializer, json);
}

abstract class GInspirationItemCreateOneInlineInput
    implements
        Built<GInspirationItemCreateOneInlineInput,
            GInspirationItemCreateOneInlineInputBuilder> {
  GInspirationItemCreateOneInlineInput._();

  factory GInspirationItemCreateOneInlineInput(
          [Function(GInspirationItemCreateOneInlineInputBuilder b) updates]) =
      _$GInspirationItemCreateOneInlineInput;

  GInspirationItemCreateInput? get create;
  GInspirationItemWhereUniqueInput? get connect;
  static Serializer<GInspirationItemCreateOneInlineInput> get serializer =>
      _$gInspirationItemCreateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GInspirationItemCreateOneInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemCreateOneInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GInspirationItemCreateOneInlineInput.serializer, json);
}

abstract class GInspirationItemManyWhereInput
    implements
        Built<GInspirationItemManyWhereInput,
            GInspirationItemManyWhereInputBuilder> {
  GInspirationItemManyWhereInput._();

  factory GInspirationItemManyWhereInput(
          [Function(GInspirationItemManyWhereInputBuilder b) updates]) =
      _$GInspirationItemManyWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GInspirationItemWhereInput>? get AND;
  BuiltList<GInspirationItemWhereInput>? get OR;
  BuiltList<GInspirationItemWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get video;
  GAssetWhereInput? get mainImage;
  static Serializer<GInspirationItemManyWhereInput> get serializer =>
      _$gInspirationItemManyWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GInspirationItemManyWhereInput.serializer, this) as Map<String, dynamic>);
  static GInspirationItemManyWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemManyWhereInput.serializer, json);
}

class GInspirationItemOrderByInput extends EnumClass {
  const GInspirationItemOrderByInput._(String name) : super(name);

  static const GInspirationItemOrderByInput id_ASC =
      _$gInspirationItemOrderByInputid_ASC;

  static const GInspirationItemOrderByInput id_DESC =
      _$gInspirationItemOrderByInputid_DESC;

  static const GInspirationItemOrderByInput createdAt_ASC =
      _$gInspirationItemOrderByInputcreatedAt_ASC;

  static const GInspirationItemOrderByInput createdAt_DESC =
      _$gInspirationItemOrderByInputcreatedAt_DESC;

  static const GInspirationItemOrderByInput updatedAt_ASC =
      _$gInspirationItemOrderByInputupdatedAt_ASC;

  static const GInspirationItemOrderByInput updatedAt_DESC =
      _$gInspirationItemOrderByInputupdatedAt_DESC;

  static const GInspirationItemOrderByInput publishedAt_ASC =
      _$gInspirationItemOrderByInputpublishedAt_ASC;

  static const GInspirationItemOrderByInput publishedAt_DESC =
      _$gInspirationItemOrderByInputpublishedAt_DESC;

  static const GInspirationItemOrderByInput title_ASC =
      _$gInspirationItemOrderByInputtitle_ASC;

  static const GInspirationItemOrderByInput title_DESC =
      _$gInspirationItemOrderByInputtitle_DESC;

  static Serializer<GInspirationItemOrderByInput> get serializer =>
      _$gInspirationItemOrderByInputSerializer;
  static BuiltSet<GInspirationItemOrderByInput> get values =>
      _$gInspirationItemOrderByInputValues;
  static GInspirationItemOrderByInput valueOf(String name) =>
      _$gInspirationItemOrderByInputValueOf(name);
}

abstract class GInspirationItemUpdateInput
    implements
        Built<GInspirationItemUpdateInput, GInspirationItemUpdateInputBuilder> {
  GInspirationItemUpdateInput._();

  factory GInspirationItemUpdateInput(
          [Function(GInspirationItemUpdateInputBuilder b) updates]) =
      _$GInspirationItemUpdateInput;

  String? get title;
  GAssetUpdateOneInlineInput? get video;
  GAssetUpdateOneInlineInput? get mainImage;
  static Serializer<GInspirationItemUpdateInput> get serializer =>
      _$gInspirationItemUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GInspirationItemUpdateInput.serializer, this) as Map<String, dynamic>);
  static GInspirationItemUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemUpdateInput.serializer, json);
}

abstract class GInspirationItemUpdateManyInlineInput
    implements
        Built<GInspirationItemUpdateManyInlineInput,
            GInspirationItemUpdateManyInlineInputBuilder> {
  GInspirationItemUpdateManyInlineInput._();

  factory GInspirationItemUpdateManyInlineInput(
          [Function(GInspirationItemUpdateManyInlineInputBuilder b) updates]) =
      _$GInspirationItemUpdateManyInlineInput;

  BuiltList<GInspirationItemCreateInput>? get create;
  BuiltList<GInspirationItemConnectInput>? get connect;
  BuiltList<GInspirationItemWhereUniqueInput>? get set;
  BuiltList<GInspirationItemUpdateWithNestedWhereUniqueInput>? get updateIt;
  BuiltList<GInspirationItemUpsertWithNestedWhereUniqueInput>? get upsert;
  BuiltList<GInspirationItemWhereUniqueInput>? get disconnect;
  BuiltList<GInspirationItemWhereUniqueInput>? get delete;
  static Serializer<GInspirationItemUpdateManyInlineInput> get serializer =>
      _$gInspirationItemUpdateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GInspirationItemUpdateManyInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemUpdateManyInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GInspirationItemUpdateManyInlineInput.serializer, json);
}

abstract class GInspirationItemUpdateManyInput
    implements
        Built<GInspirationItemUpdateManyInput,
            GInspirationItemUpdateManyInputBuilder> {
  GInspirationItemUpdateManyInput._();

  factory GInspirationItemUpdateManyInput(
          [Function(GInspirationItemUpdateManyInputBuilder b) updates]) =
      _$GInspirationItemUpdateManyInput;

  String? get title;
  static Serializer<GInspirationItemUpdateManyInput> get serializer =>
      _$gInspirationItemUpdateManyInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GInspirationItemUpdateManyInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemUpdateManyInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemUpdateManyInput.serializer, json);
}

abstract class GInspirationItemUpdateManyWithNestedWhereInput
    implements
        Built<GInspirationItemUpdateManyWithNestedWhereInput,
            GInspirationItemUpdateManyWithNestedWhereInputBuilder> {
  GInspirationItemUpdateManyWithNestedWhereInput._();

  factory GInspirationItemUpdateManyWithNestedWhereInput(
      [Function(GInspirationItemUpdateManyWithNestedWhereInputBuilder b)
          updates]) = _$GInspirationItemUpdateManyWithNestedWhereInput;

  GInspirationItemWhereInput get where;
  GInspirationItemUpdateManyInput get data;
  static Serializer<GInspirationItemUpdateManyWithNestedWhereInput>
      get serializer =>
          _$gInspirationItemUpdateManyWithNestedWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GInspirationItemUpdateManyWithNestedWhereInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemUpdateManyWithNestedWhereInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GInspirationItemUpdateManyWithNestedWhereInput.serializer, json);
}

abstract class GInspirationItemUpdateOneInlineInput
    implements
        Built<GInspirationItemUpdateOneInlineInput,
            GInspirationItemUpdateOneInlineInputBuilder> {
  GInspirationItemUpdateOneInlineInput._();

  factory GInspirationItemUpdateOneInlineInput(
          [Function(GInspirationItemUpdateOneInlineInputBuilder b) updates]) =
      _$GInspirationItemUpdateOneInlineInput;

  GInspirationItemCreateInput? get create;
  GInspirationItemUpdateWithNestedWhereUniqueInput? get updateIt;
  GInspirationItemUpsertWithNestedWhereUniqueInput? get upsert;
  GInspirationItemWhereUniqueInput? get connect;
  bool? get disconnect;
  bool? get delete;
  static Serializer<GInspirationItemUpdateOneInlineInput> get serializer =>
      _$gInspirationItemUpdateOneInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GInspirationItemUpdateOneInlineInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemUpdateOneInlineInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GInspirationItemUpdateOneInlineInput.serializer, json);
}

abstract class GInspirationItemUpdateWithNestedWhereUniqueInput
    implements
        Built<GInspirationItemUpdateWithNestedWhereUniqueInput,
            GInspirationItemUpdateWithNestedWhereUniqueInputBuilder> {
  GInspirationItemUpdateWithNestedWhereUniqueInput._();

  factory GInspirationItemUpdateWithNestedWhereUniqueInput(
      [Function(GInspirationItemUpdateWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GInspirationItemUpdateWithNestedWhereUniqueInput;

  GInspirationItemWhereUniqueInput get where;
  GInspirationItemUpdateInput get data;
  static Serializer<GInspirationItemUpdateWithNestedWhereUniqueInput>
      get serializer =>
          _$gInspirationItemUpdateWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GInspirationItemUpdateWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemUpdateWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GInspirationItemUpdateWithNestedWhereUniqueInput.serializer, json);
}

abstract class GInspirationItemUpsertInput
    implements
        Built<GInspirationItemUpsertInput, GInspirationItemUpsertInputBuilder> {
  GInspirationItemUpsertInput._();

  factory GInspirationItemUpsertInput(
          [Function(GInspirationItemUpsertInputBuilder b) updates]) =
      _$GInspirationItemUpsertInput;

  GInspirationItemCreateInput get create;
  GInspirationItemUpdateInput get updateIt;
  static Serializer<GInspirationItemUpsertInput> get serializer =>
      _$gInspirationItemUpsertInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GInspirationItemUpsertInput.serializer, this) as Map<String, dynamic>);
  static GInspirationItemUpsertInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemUpsertInput.serializer, json);
}

abstract class GInspirationItemUpsertWithNestedWhereUniqueInput
    implements
        Built<GInspirationItemUpsertWithNestedWhereUniqueInput,
            GInspirationItemUpsertWithNestedWhereUniqueInputBuilder> {
  GInspirationItemUpsertWithNestedWhereUniqueInput._();

  factory GInspirationItemUpsertWithNestedWhereUniqueInput(
      [Function(GInspirationItemUpsertWithNestedWhereUniqueInputBuilder b)
          updates]) = _$GInspirationItemUpsertWithNestedWhereUniqueInput;

  GInspirationItemWhereUniqueInput get where;
  GInspirationItemUpsertInput get data;
  static Serializer<GInspirationItemUpsertWithNestedWhereUniqueInput>
      get serializer =>
          _$gInspirationItemUpsertWithNestedWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GInspirationItemUpsertWithNestedWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemUpsertWithNestedWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GInspirationItemUpsertWithNestedWhereUniqueInput.serializer, json);
}

abstract class GInspirationItemWhereInput
    implements
        Built<GInspirationItemWhereInput, GInspirationItemWhereInputBuilder> {
  GInspirationItemWhereInput._();

  factory GInspirationItemWhereInput(
          [Function(GInspirationItemWhereInputBuilder b) updates]) =
      _$GInspirationItemWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GInspirationItemWhereInput>? get AND;
  BuiltList<GInspirationItemWhereInput>? get OR;
  BuiltList<GInspirationItemWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get title;
  String? get title_not;
  BuiltList<String>? get title_in;
  BuiltList<String>? get title_not_in;
  String? get title_contains;
  String? get title_not_contains;
  String? get title_starts_with;
  String? get title_not_starts_with;
  String? get title_ends_with;
  String? get title_not_ends_with;
  GUserWhereInput? get createdBy;
  GUserWhereInput? get updatedBy;
  GUserWhereInput? get publishedBy;
  GAssetWhereInput? get video;
  GAssetWhereInput? get mainImage;
  static Serializer<GInspirationItemWhereInput> get serializer =>
      _$gInspirationItemWhereInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GInspirationItemWhereInput.serializer, this) as Map<String, dynamic>);
  static GInspirationItemWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemWhereInput.serializer, json);
}

abstract class GInspirationItemWhereUniqueInput
    implements
        Built<GInspirationItemWhereUniqueInput,
            GInspirationItemWhereUniqueInputBuilder> {
  GInspirationItemWhereUniqueInput._();

  factory GInspirationItemWhereUniqueInput(
          [Function(GInspirationItemWhereUniqueInputBuilder b) updates]) =
      _$GInspirationItemWhereUniqueInput;

  String? get id;
  static Serializer<GInspirationItemWhereUniqueInput> get serializer =>
      _$gInspirationItemWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GInspirationItemWhereUniqueInput.serializer, this)
      as Map<String, dynamic>);
  static GInspirationItemWhereUniqueInput? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GInspirationItemWhereUniqueInput.serializer, json);
}

abstract class GJson implements Built<GJson, GJsonBuilder> {
  GJson._();

  factory GJson([String? value]) =>
      _$GJson((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJson> get serializer => _i2.DefaultScalarSerializer<GJson>(
      (Object serialized) => GJson((serialized as String?)));
}

class GLevel extends EnumClass {
  const GLevel._(String name) : super(name);

  static const GLevel beginner = _$gLevelbeginner;

  static const GLevel intermediate = _$gLevelintermediate;

  static const GLevel advanced = _$gLeveladvanced;

  static Serializer<GLevel> get serializer => _$gLevelSerializer;
  static BuiltSet<GLevel> get values => _$gLevelValues;
  static GLevel valueOf(String name) => _$gLevelValueOf(name);
}

class GLocale extends EnumClass {
  const GLocale._(String name) : super(name);

  static const GLocale en = _$gLocaleen;

  static Serializer<GLocale> get serializer => _$gLocaleSerializer;
  static BuiltSet<GLocale> get values => _$gLocaleValues;
  static GLocale valueOf(String name) => _$gLocaleValueOf(name);
}

abstract class GLocationInput
    implements Built<GLocationInput, GLocationInputBuilder> {
  GLocationInput._();

  factory GLocationInput([Function(GLocationInputBuilder b) updates]) =
      _$GLocationInput;

  double get latitude;
  double get longitude;
  static Serializer<GLocationInput> get serializer =>
      _$gLocationInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLocationInput.serializer, this)
          as Map<String, dynamic>);
  static GLocationInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLocationInput.serializer, json);
}

abstract class GLong implements Built<GLong, GLongBuilder> {
  GLong._();

  factory GLong([String? value]) =>
      _$GLong((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GLong> get serializer => _i2.DefaultScalarSerializer<GLong>(
      (Object serialized) => GLong((serialized as String?)));
}

class GMealSize extends EnumClass {
  const GMealSize._(String name) : super(name);

  static const GMealSize General = _$gMealSizeGeneral;

  static const GMealSize Refuel = _$gMealSizeRefuel;

  static const GMealSize Snack = _$gMealSizeSnack;

  static Serializer<GMealSize> get serializer => _$gMealSizeSerializer;
  static BuiltSet<GMealSize> get values => _$gMealSizeValues;
  static GMealSize valueOf(String name) => _$gMealSizeValueOf(name);
}

class GMealType extends EnumClass {
  const GMealType._(String name) : super(name);

  static const GMealType Vegetarian = _$gMealTypeVegetarian;

  static const GMealType Mixed = _$gMealTypeMixed;

  static const GMealType Vegan = _$gMealTypeVegan;

  static const GMealType Pescatarian = _$gMealTypePescatarian;

  static Serializer<GMealType> get serializer => _$gMealTypeSerializer;
  static BuiltSet<GMealType> get values => _$gMealTypeValues;
  static GMealType valueOf(String name) => _$gMealTypeValueOf(name);
}

class GPlan extends EnumClass {
  const GPlan._(String name) : super(name);

  static const GPlan Monthly = _$gPlanMonthly;

  static const GPlan Yearly = _$gPlanYearly;

  static const GPlan Quarterly = _$gPlanQuarterly;

  static Serializer<GPlan> get serializer => _$gPlanSerializer;
  static BuiltSet<GPlan> get values => _$gPlanValues;
  static GPlan valueOf(String name) => _$gPlanValueOf(name);
}

class GPreExistingCondition extends EnumClass {
  const GPreExistingCondition._(String name) : super(name);

  static const GPreExistingCondition Diabetes = _$gPreExistingConditionDiabetes;

  static const GPreExistingCondition A_thyroid_conditions =
      _$gPreExistingConditionA_thyroid_conditions;

  static const GPreExistingCondition Irritable_bowl_condition =
      _$gPreExistingConditionIrritable_bowl_condition;

  static const GPreExistingCondition Abnormal_blood_condtion =
      _$gPreExistingConditionAbnormal_blood_condtion;

  static Serializer<GPreExistingCondition> get serializer =>
      _$gPreExistingConditionSerializer;
  static BuiltSet<GPreExistingCondition> get values =>
      _$gPreExistingConditionValues;
  static GPreExistingCondition valueOf(String name) =>
      _$gPreExistingConditionValueOf(name);
}

abstract class GPublishLocaleInput
    implements Built<GPublishLocaleInput, GPublishLocaleInputBuilder> {
  GPublishLocaleInput._();

  factory GPublishLocaleInput(
      [Function(GPublishLocaleInputBuilder b) updates]) = _$GPublishLocaleInput;

  GLocale get locale;
  BuiltList<GStage> get stages;
  static Serializer<GPublishLocaleInput> get serializer =>
      _$gPublishLocaleInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPublishLocaleInput.serializer, this)
          as Map<String, dynamic>);
  static GPublishLocaleInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPublishLocaleInput.serializer, json);
}

abstract class GRGBAInput implements Built<GRGBAInput, GRGBAInputBuilder> {
  GRGBAInput._();

  factory GRGBAInput([Function(GRGBAInputBuilder b) updates]) = _$GRGBAInput;

  String get r;
  String get g;
  String get b;
  String get a;
  static Serializer<GRGBAInput> get serializer => _$gRGBAInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRGBAInput.serializer, this)
          as Map<String, dynamic>);
  static GRGBAInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRGBAInput.serializer, json);
}

abstract class GRichTextAST
    implements Built<GRichTextAST, GRichTextASTBuilder> {
  GRichTextAST._();

  factory GRichTextAST([String? value]) =>
      _$GRichTextAST((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GRichTextAST> get serializer =>
      _i2.DefaultScalarSerializer<GRichTextAST>(
          (Object serialized) => GRichTextAST((serialized as String?)));
}

class GSex extends EnumClass {
  const GSex._(String name) : super(name);

  static const GSex Female = _$gSexFemale;

  static const GSex Male = _$gSexMale;

  static const GSex Non_binary = _$gSexNon_binary;

  static Serializer<GSex> get serializer => _$gSexSerializer;
  static BuiltSet<GSex> get values => _$gSexValues;
  static GSex valueOf(String name) => _$gSexValueOf(name);
}

class GStage extends EnumClass {
  const GStage._(String name) : super(name);

  static const GStage DRAFT = _$gStageDRAFT;

  static const GStage PUBLISHED = _$gStagePUBLISHED;

  static Serializer<GStage> get serializer => _$gStageSerializer;
  static BuiltSet<GStage> get values => _$gStageValues;
  static GStage valueOf(String name) => _$gStageValueOf(name);
}

class GSystemDateTimeFieldVariation extends EnumClass {
  const GSystemDateTimeFieldVariation._(String name) : super(name);

  static const GSystemDateTimeFieldVariation BASE =
      _$gSystemDateTimeFieldVariationBASE;

  static const GSystemDateTimeFieldVariation LOCALIZATION =
      _$gSystemDateTimeFieldVariationLOCALIZATION;

  static const GSystemDateTimeFieldVariation COMBINED =
      _$gSystemDateTimeFieldVariationCOMBINED;

  static Serializer<GSystemDateTimeFieldVariation> get serializer =>
      _$gSystemDateTimeFieldVariationSerializer;
  static BuiltSet<GSystemDateTimeFieldVariation> get values =>
      _$gSystemDateTimeFieldVariationValues;
  static GSystemDateTimeFieldVariation valueOf(String name) =>
      _$gSystemDateTimeFieldVariationValueOf(name);
}

abstract class GUnpublishLocaleInput
    implements Built<GUnpublishLocaleInput, GUnpublishLocaleInputBuilder> {
  GUnpublishLocaleInput._();

  factory GUnpublishLocaleInput(
          [Function(GUnpublishLocaleInputBuilder b) updates]) =
      _$GUnpublishLocaleInput;

  GLocale get locale;
  BuiltList<GStage> get stages;
  static Serializer<GUnpublishLocaleInput> get serializer =>
      _$gUnpublishLocaleInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUnpublishLocaleInput.serializer, this)
          as Map<String, dynamic>);
  static GUnpublishLocaleInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUnpublishLocaleInput.serializer, json);
}

abstract class GUserConnectInput
    implements Built<GUserConnectInput, GUserConnectInputBuilder> {
  GUserConnectInput._();

  factory GUserConnectInput([Function(GUserConnectInputBuilder b) updates]) =
      _$GUserConnectInput;

  GUserWhereUniqueInput get where;
  GConnectPositionInput? get position;
  static Serializer<GUserConnectInput> get serializer =>
      _$gUserConnectInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserConnectInput.serializer, this)
          as Map<String, dynamic>);
  static GUserConnectInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserConnectInput.serializer, json);
}

abstract class GUserCreateManyInlineInput
    implements
        Built<GUserCreateManyInlineInput, GUserCreateManyInlineInputBuilder> {
  GUserCreateManyInlineInput._();

  factory GUserCreateManyInlineInput(
          [Function(GUserCreateManyInlineInputBuilder b) updates]) =
      _$GUserCreateManyInlineInput;

  BuiltList<GUserWhereUniqueInput>? get connect;
  static Serializer<GUserCreateManyInlineInput> get serializer =>
      _$gUserCreateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GUserCreateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GUserCreateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUserCreateManyInlineInput.serializer, json);
}

abstract class GUserCreateOneInlineInput
    implements
        Built<GUserCreateOneInlineInput, GUserCreateOneInlineInputBuilder> {
  GUserCreateOneInlineInput._();

  factory GUserCreateOneInlineInput(
          [Function(GUserCreateOneInlineInputBuilder b) updates]) =
      _$GUserCreateOneInlineInput;

  GUserWhereUniqueInput? get connect;
  static Serializer<GUserCreateOneInlineInput> get serializer =>
      _$gUserCreateOneInlineInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserCreateOneInlineInput.serializer, this)
          as Map<String, dynamic>);
  static GUserCreateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUserCreateOneInlineInput.serializer, json);
}

class GUserKind extends EnumClass {
  const GUserKind._(String name) : super(name);

  static const GUserKind MEMBER = _$gUserKindMEMBER;

  static const GUserKind PAT = _$gUserKindPAT;

  static const GUserKind PUBLIC = _$gUserKindPUBLIC;

  static const GUserKind WEBHOOK = _$gUserKindWEBHOOK;

  static Serializer<GUserKind> get serializer => _$gUserKindSerializer;
  static BuiltSet<GUserKind> get values => _$gUserKindValues;
  static GUserKind valueOf(String name) => _$gUserKindValueOf(name);
}

abstract class GUserManyWhereInput
    implements Built<GUserManyWhereInput, GUserManyWhereInputBuilder> {
  GUserManyWhereInput._();

  factory GUserManyWhereInput(
      [Function(GUserManyWhereInputBuilder b) updates]) = _$GUserManyWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GUserWhereInput>? get AND;
  BuiltList<GUserWhereInput>? get OR;
  BuiltList<GUserWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get name;
  String? get name_not;
  BuiltList<String>? get name_in;
  BuiltList<String>? get name_not_in;
  String? get name_contains;
  String? get name_not_contains;
  String? get name_starts_with;
  String? get name_not_starts_with;
  String? get name_ends_with;
  String? get name_not_ends_with;
  String? get picture;
  String? get picture_not;
  BuiltList<String>? get picture_in;
  BuiltList<String>? get picture_not_in;
  String? get picture_contains;
  String? get picture_not_contains;
  String? get picture_starts_with;
  String? get picture_not_starts_with;
  String? get picture_ends_with;
  String? get picture_not_ends_with;
  bool? get isActive;
  bool? get isActive_not;
  GUserKind? get kind;
  GUserKind? get kind_not;
  BuiltList<GUserKind>? get kind_in;
  BuiltList<GUserKind>? get kind_not_in;
  static Serializer<GUserManyWhereInput> get serializer =>
      _$gUserManyWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserManyWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GUserManyWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserManyWhereInput.serializer, json);
}

class GUserOrderByInput extends EnumClass {
  const GUserOrderByInput._(String name) : super(name);

  static const GUserOrderByInput id_ASC = _$gUserOrderByInputid_ASC;

  static const GUserOrderByInput id_DESC = _$gUserOrderByInputid_DESC;

  static const GUserOrderByInput createdAt_ASC =
      _$gUserOrderByInputcreatedAt_ASC;

  static const GUserOrderByInput createdAt_DESC =
      _$gUserOrderByInputcreatedAt_DESC;

  static const GUserOrderByInput updatedAt_ASC =
      _$gUserOrderByInputupdatedAt_ASC;

  static const GUserOrderByInput updatedAt_DESC =
      _$gUserOrderByInputupdatedAt_DESC;

  static const GUserOrderByInput publishedAt_ASC =
      _$gUserOrderByInputpublishedAt_ASC;

  static const GUserOrderByInput publishedAt_DESC =
      _$gUserOrderByInputpublishedAt_DESC;

  static const GUserOrderByInput name_ASC = _$gUserOrderByInputname_ASC;

  static const GUserOrderByInput name_DESC = _$gUserOrderByInputname_DESC;

  static const GUserOrderByInput picture_ASC = _$gUserOrderByInputpicture_ASC;

  static const GUserOrderByInput picture_DESC = _$gUserOrderByInputpicture_DESC;

  static const GUserOrderByInput isActive_ASC = _$gUserOrderByInputisActive_ASC;

  static const GUserOrderByInput isActive_DESC =
      _$gUserOrderByInputisActive_DESC;

  static const GUserOrderByInput kind_ASC = _$gUserOrderByInputkind_ASC;

  static const GUserOrderByInput kind_DESC = _$gUserOrderByInputkind_DESC;

  static Serializer<GUserOrderByInput> get serializer =>
      _$gUserOrderByInputSerializer;
  static BuiltSet<GUserOrderByInput> get values => _$gUserOrderByInputValues;
  static GUserOrderByInput valueOf(String name) =>
      _$gUserOrderByInputValueOf(name);
}

abstract class GUserUpdateManyInlineInput
    implements
        Built<GUserUpdateManyInlineInput, GUserUpdateManyInlineInputBuilder> {
  GUserUpdateManyInlineInput._();

  factory GUserUpdateManyInlineInput(
          [Function(GUserUpdateManyInlineInputBuilder b) updates]) =
      _$GUserUpdateManyInlineInput;

  BuiltList<GUserConnectInput>? get connect;
  BuiltList<GUserWhereUniqueInput>? get set;
  BuiltList<GUserWhereUniqueInput>? get disconnect;
  static Serializer<GUserUpdateManyInlineInput> get serializer =>
      _$gUserUpdateManyInlineInputSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GUserUpdateManyInlineInput.serializer, this) as Map<String, dynamic>);
  static GUserUpdateManyInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUserUpdateManyInlineInput.serializer, json);
}

abstract class GUserUpdateOneInlineInput
    implements
        Built<GUserUpdateOneInlineInput, GUserUpdateOneInlineInputBuilder> {
  GUserUpdateOneInlineInput._();

  factory GUserUpdateOneInlineInput(
          [Function(GUserUpdateOneInlineInputBuilder b) updates]) =
      _$GUserUpdateOneInlineInput;

  GUserWhereUniqueInput? get connect;
  bool? get disconnect;
  static Serializer<GUserUpdateOneInlineInput> get serializer =>
      _$gUserUpdateOneInlineInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserUpdateOneInlineInput.serializer, this)
          as Map<String, dynamic>);
  static GUserUpdateOneInlineInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUserUpdateOneInlineInput.serializer, json);
}

abstract class GUserWhereInput
    implements Built<GUserWhereInput, GUserWhereInputBuilder> {
  GUserWhereInput._();

  factory GUserWhereInput([Function(GUserWhereInputBuilder b) updates]) =
      _$GUserWhereInput;

  @BuiltValueField(wireName: '_search')
  String? get G_search;
  BuiltList<GUserWhereInput>? get AND;
  BuiltList<GUserWhereInput>? get OR;
  BuiltList<GUserWhereInput>? get NOT;
  String? get id;
  String? get id_not;
  BuiltList<String>? get id_in;
  BuiltList<String>? get id_not_in;
  String? get id_contains;
  String? get id_not_contains;
  String? get id_starts_with;
  String? get id_not_starts_with;
  String? get id_ends_with;
  String? get id_not_ends_with;
  DateTime? get createdAt;
  DateTime? get createdAt_not;
  BuiltList<DateTime>? get createdAt_in;
  BuiltList<DateTime>? get createdAt_not_in;
  DateTime? get createdAt_lt;
  DateTime? get createdAt_lte;
  DateTime? get createdAt_gt;
  DateTime? get createdAt_gte;
  DateTime? get updatedAt;
  DateTime? get updatedAt_not;
  BuiltList<DateTime>? get updatedAt_in;
  BuiltList<DateTime>? get updatedAt_not_in;
  DateTime? get updatedAt_lt;
  DateTime? get updatedAt_lte;
  DateTime? get updatedAt_gt;
  DateTime? get updatedAt_gte;
  DateTime? get publishedAt;
  DateTime? get publishedAt_not;
  BuiltList<DateTime>? get publishedAt_in;
  BuiltList<DateTime>? get publishedAt_not_in;
  DateTime? get publishedAt_lt;
  DateTime? get publishedAt_lte;
  DateTime? get publishedAt_gt;
  DateTime? get publishedAt_gte;
  String? get name;
  String? get name_not;
  BuiltList<String>? get name_in;
  BuiltList<String>? get name_not_in;
  String? get name_contains;
  String? get name_not_contains;
  String? get name_starts_with;
  String? get name_not_starts_with;
  String? get name_ends_with;
  String? get name_not_ends_with;
  String? get picture;
  String? get picture_not;
  BuiltList<String>? get picture_in;
  BuiltList<String>? get picture_not_in;
  String? get picture_contains;
  String? get picture_not_contains;
  String? get picture_starts_with;
  String? get picture_not_starts_with;
  String? get picture_ends_with;
  String? get picture_not_ends_with;
  bool? get isActive;
  bool? get isActive_not;
  GUserKind? get kind;
  GUserKind? get kind_not;
  BuiltList<GUserKind>? get kind_in;
  BuiltList<GUserKind>? get kind_not_in;
  static Serializer<GUserWhereInput> get serializer =>
      _$gUserWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GUserWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserWhereInput.serializer, json);
}

abstract class GUserWhereUniqueInput
    implements Built<GUserWhereUniqueInput, GUserWhereUniqueInputBuilder> {
  GUserWhereUniqueInput._();

  factory GUserWhereUniqueInput(
          [Function(GUserWhereUniqueInputBuilder b) updates]) =
      _$GUserWhereUniqueInput;

  String? get id;
  static Serializer<GUserWhereUniqueInput> get serializer =>
      _$gUserWhereUniqueInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUserWhereUniqueInput.serializer, this)
          as Map<String, dynamic>);
  static GUserWhereUniqueInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUserWhereUniqueInput.serializer, json);
}

abstract class GVersionWhereInput
    implements Built<GVersionWhereInput, GVersionWhereInputBuilder> {
  GVersionWhereInput._();

  factory GVersionWhereInput([Function(GVersionWhereInputBuilder b) updates]) =
      _$GVersionWhereInput;

  String get id;
  GStage get stage;
  int get revision;
  static Serializer<GVersionWhereInput> get serializer =>
      _$gVersionWhereInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GVersionWhereInput.serializer, this)
          as Map<String, dynamic>);
  static GVersionWhereInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GVersionWhereInput.serializer, json);
}
