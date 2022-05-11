import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.data.gql.dart'
    show GGetAssetByIdData, GGetAssetByIdData_assets;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.req.gql.dart'
    show GGetAssetByIdReq;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.var.gql.dart'
    show GGetAssetByIdVars;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.data.gql.dart'
    show GGetAssetByFileNameData, GGetAssetByFileNameData_assets;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.req.gql.dart'
    show GGetAssetByFileNameReq;
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.var.gql.dart'
    show GGetAssetByFileNameVars;
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.data.gql.dart'
    show
        GAllCategoriesData,
        GAllCategoriesData_categories,
        GAllCategoriesData_categories_mainImage;
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.req.gql.dart'
    show GAllCategoriesReq;
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.var.gql.dart'
    show GAllCategoriesVars;
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.data.gql.dart'
    show
        GGetCategoryByTypeData,
        GGetCategoryByTypeData_categories,
        GGetCategoryByTypeData_categories_mainImage;
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.req.gql.dart'
    show GGetCategoryByTypeReq;
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.var.gql.dart'
    show GGetCategoryByTypeVars;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.data.gql.dart'
    show
        GAllFeedData,
        GAllFeedData_feedItems,
        GAllFeedData_feedItems_mainImage,
        GAllFeedData_feedItems_video;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.req.gql.dart'
    show GAllFeedReq;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.var.gql.dart'
    show GAllFeedVars;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.data.gql.dart'
    show
        GFeedByCategoryIdData,
        GFeedByCategoryIdData_feedItems,
        GFeedByCategoryIdData_feedItems_mainImage,
        GFeedByCategoryIdData_feedItems_video;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.req.gql.dart'
    show GFeedByCategoryIdReq;
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.var.gql.dart'
    show GFeedByCategoryIdVars;
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.data.gql.dart'
    show
        GAllInspirationsData,
        GAllInspirationsData_inspirationItems,
        GAllInspirationsData_inspirationItems_mainImage,
        GAllInspirationsData_inspirationItems_video;
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.req.gql.dart'
    show GAllInspirationsReq;
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.var.gql.dart'
    show GAllInspirationsVars;
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.data.gql.dart'
    show GAssetResponseData;
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.req.gql.dart'
    show GAssetResponseReq;
import 'package:fd_fitness_app/data/graphql/models/response/assets/asset_response.var.gql.dart'
    show GAssetResponseVars;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.data.gql.dart'
    show GCategoryFeedData, GCategoryFeedData_mainImage;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.req.gql.dart'
    show GCategoryFeedReq;
import 'package:fd_fitness_app/data/graphql/models/response/category/category_response.var.gql.dart'
    show GCategoryFeedVars;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.data.gql.dart'
    show
        GFeedResponseData,
        GFeedResponseData_mainImage,
        GFeedResponseData_video;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.req.gql.dart'
    show GFeedResponseReq;
import 'package:fd_fitness_app/data/graphql/models/response/feed/feed_response.var.gql.dart'
    show GFeedResponseVars;
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.data.gql.dart'
    show
        GInspirationResponseData,
        GInspirationResponseData_mainImage,
        GInspirationResponseData_video;
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.req.gql.dart'
    show GInspirationResponseReq;
import 'package:fd_fitness_app/data/graphql/models/response/inspiration/inspiration_response.var.gql.dart'
    show GInspirationResponseVars;
import 'package:fd_fitness_app/data/graphql/schema/schema.schema.gql.dart'
    show
        GAssetConnectInput,
        GAssetCreateInput,
        GAssetCreateLocalizationDataInput,
        GAssetCreateLocalizationInput,
        GAssetCreateLocalizationsInput,
        GAssetCreateManyInlineInput,
        GAssetCreateOneInlineInput,
        GAssetManyWhereInput,
        GAssetOrderByInput,
        GAssetTransformationInput,
        GAssetUpdateInput,
        GAssetUpdateLocalizationDataInput,
        GAssetUpdateLocalizationInput,
        GAssetUpdateLocalizationsInput,
        GAssetUpdateManyInlineInput,
        GAssetUpdateManyInput,
        GAssetUpdateManyLocalizationDataInput,
        GAssetUpdateManyLocalizationInput,
        GAssetUpdateManyLocalizationsInput,
        GAssetUpdateManyWithNestedWhereInput,
        GAssetUpdateOneInlineInput,
        GAssetUpdateWithNestedWhereUniqueInput,
        GAssetUpsertInput,
        GAssetUpsertLocalizationInput,
        GAssetUpsertWithNestedWhereUniqueInput,
        GAssetWhereInput,
        GAssetWhereUniqueInput,
        GBodyMeasurements,
        GCategoryConnectInput,
        GCategoryCreateInput,
        GCategoryCreateManyInlineInput,
        GCategoryCreateOneInlineInput,
        GCategoryFeedItemsConnectInput,
        GCategoryFeedItemsCreateInput,
        GCategoryFeedItemsCreateManyInlineInput,
        GCategoryFeedItemsCreateOneInlineInput,
        GCategoryFeedItemsUpdateInput,
        GCategoryFeedItemsUpdateManyInlineInput,
        GCategoryFeedItemsUpdateManyWithNestedWhereInput,
        GCategoryFeedItemsUpdateOneInlineInput,
        GCategoryFeedItemsUpdateWithNestedWhereUniqueInput,
        GCategoryFeedItemsUpsertWithNestedWhereUniqueInput,
        GCategoryFeedItemsWhereInput,
        GCategoryFeedItemsWhereUniqueInput,
        GCategoryManyWhereInput,
        GCategoryOrderByInput,
        GCategoryTitle,
        GCategoryUpdateInput,
        GCategoryUpdateManyInlineInput,
        GCategoryUpdateManyInput,
        GCategoryUpdateManyWithNestedWhereInput,
        GCategoryUpdateOneInlineInput,
        GCategoryUpdateWithNestedWhereUniqueInput,
        GCategoryUpsertInput,
        GCategoryUpsertWithNestedWhereUniqueInput,
        GCategoryWhereInput,
        GCategoryWhereUniqueInput,
        GColorInput,
        GConnectPositionInput,
        GCycle,
        GDocumentFileTypes,
        GDocumentOutputInput,
        GDocumentTransformationInput,
        GFeedItemCategoryConnectInput,
        GFeedItemCategoryCreateInput,
        GFeedItemCategoryCreateManyInlineInput,
        GFeedItemCategoryCreateOneInlineInput,
        GFeedItemCategoryManyWhereInput,
        GFeedItemCategoryOrderByInput,
        GFeedItemCategoryUpdateInput,
        GFeedItemCategoryUpdateManyInlineInput,
        GFeedItemCategoryUpdateManyInput,
        GFeedItemCategoryUpdateManyWithNestedWhereInput,
        GFeedItemCategoryUpdateOneInlineInput,
        GFeedItemCategoryUpdateWithNestedWhereUniqueInput,
        GFeedItemCategoryUpsertInput,
        GFeedItemCategoryUpsertWithNestedWhereUniqueInput,
        GFeedItemCategoryWhereInput,
        GFeedItemCategoryWhereUniqueInput,
        GFeedItemConnectInput,
        GFeedItemCreateInput,
        GFeedItemCreateManyInlineInput,
        GFeedItemCreateOneInlineInput,
        GFeedItemManyWhereInput,
        GFeedItemOrderByInput,
        GFeedItemUpdateInput,
        GFeedItemUpdateManyInlineInput,
        GFeedItemUpdateManyInput,
        GFeedItemUpdateManyWithNestedWhereInput,
        GFeedItemUpdateOneInlineInput,
        GFeedItemUpdateWithNestedWhereUniqueInput,
        GFeedItemUpsertInput,
        GFeedItemUpsertWithNestedWhereUniqueInput,
        GFeedItemWhereInput,
        GFeedItemWhereUniqueInput,
        GImageFit,
        GImageResizeInput,
        GImageTransformationInput,
        GInspirationItemConnectInput,
        GInspirationItemCreateInput,
        GInspirationItemCreateManyInlineInput,
        GInspirationItemCreateOneInlineInput,
        GInspirationItemManyWhereInput,
        GInspirationItemOrderByInput,
        GInspirationItemUpdateInput,
        GInspirationItemUpdateManyInlineInput,
        GInspirationItemUpdateManyInput,
        GInspirationItemUpdateManyWithNestedWhereInput,
        GInspirationItemUpdateOneInlineInput,
        GInspirationItemUpdateWithNestedWhereUniqueInput,
        GInspirationItemUpsertInput,
        GInspirationItemUpsertWithNestedWhereUniqueInput,
        GInspirationItemWhereInput,
        GInspirationItemWhereUniqueInput,
        GJson,
        GLevel,
        GLocale,
        GLocationInput,
        GLong,
        GMealSize,
        GMealType,
        GPlan,
        GPreExistingCondition,
        GPublishLocaleInput,
        GRGBAInput,
        GRichTextAST,
        GSex,
        GStage,
        GSystemDateTimeFieldVariation,
        GUnpublishLocaleInput,
        GUserConnectInput,
        GUserCreateManyInlineInput,
        GUserCreateOneInlineInput,
        GUserKind,
        GUserManyWhereInput,
        GUserOrderByInput,
        GUserUpdateManyInlineInput,
        GUserUpdateOneInlineInput,
        GUserWhereInput,
        GUserWhereUniqueInput,
        GVersionWhereInput,
        G_FilterKind,
        G_MutationInputFieldKind,
        G_MutationKind,
        G_OrderDirection,
        G_RelationInputCardinality,
        G_RelationInputKind,
        G_RelationKind,
        Guntitled;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAllCategoriesData,
  GAllCategoriesData_categories,
  GAllCategoriesData_categories_mainImage,
  GAllCategoriesReq,
  GAllCategoriesVars,
  GAllFeedData,
  GAllFeedData_feedItems,
  GAllFeedData_feedItems_mainImage,
  GAllFeedData_feedItems_video,
  GAllFeedReq,
  GAllFeedVars,
  GAllInspirationsData,
  GAllInspirationsData_inspirationItems,
  GAllInspirationsData_inspirationItems_mainImage,
  GAllInspirationsData_inspirationItems_video,
  GAllInspirationsReq,
  GAllInspirationsVars,
  GAssetConnectInput,
  GAssetCreateInput,
  GAssetCreateLocalizationDataInput,
  GAssetCreateLocalizationInput,
  GAssetCreateLocalizationsInput,
  GAssetCreateManyInlineInput,
  GAssetCreateOneInlineInput,
  GAssetManyWhereInput,
  GAssetOrderByInput,
  GAssetResponseData,
  GAssetResponseReq,
  GAssetResponseVars,
  GAssetTransformationInput,
  GAssetUpdateInput,
  GAssetUpdateLocalizationDataInput,
  GAssetUpdateLocalizationInput,
  GAssetUpdateLocalizationsInput,
  GAssetUpdateManyInlineInput,
  GAssetUpdateManyInput,
  GAssetUpdateManyLocalizationDataInput,
  GAssetUpdateManyLocalizationInput,
  GAssetUpdateManyLocalizationsInput,
  GAssetUpdateManyWithNestedWhereInput,
  GAssetUpdateOneInlineInput,
  GAssetUpdateWithNestedWhereUniqueInput,
  GAssetUpsertInput,
  GAssetUpsertLocalizationInput,
  GAssetUpsertWithNestedWhereUniqueInput,
  GAssetWhereInput,
  GAssetWhereUniqueInput,
  GBodyMeasurements,
  GCategoryConnectInput,
  GCategoryCreateInput,
  GCategoryCreateManyInlineInput,
  GCategoryCreateOneInlineInput,
  GCategoryFeedData,
  GCategoryFeedData_mainImage,
  GCategoryFeedItemsConnectInput,
  GCategoryFeedItemsCreateInput,
  GCategoryFeedItemsCreateManyInlineInput,
  GCategoryFeedItemsCreateOneInlineInput,
  GCategoryFeedItemsUpdateInput,
  GCategoryFeedItemsUpdateManyInlineInput,
  GCategoryFeedItemsUpdateManyWithNestedWhereInput,
  GCategoryFeedItemsUpdateOneInlineInput,
  GCategoryFeedItemsUpdateWithNestedWhereUniqueInput,
  GCategoryFeedItemsUpsertWithNestedWhereUniqueInput,
  GCategoryFeedItemsWhereInput,
  GCategoryFeedItemsWhereUniqueInput,
  GCategoryFeedReq,
  GCategoryFeedVars,
  GCategoryManyWhereInput,
  GCategoryOrderByInput,
  GCategoryTitle,
  GCategoryUpdateInput,
  GCategoryUpdateManyInlineInput,
  GCategoryUpdateManyInput,
  GCategoryUpdateManyWithNestedWhereInput,
  GCategoryUpdateOneInlineInput,
  GCategoryUpdateWithNestedWhereUniqueInput,
  GCategoryUpsertInput,
  GCategoryUpsertWithNestedWhereUniqueInput,
  GCategoryWhereInput,
  GCategoryWhereUniqueInput,
  GColorInput,
  GConnectPositionInput,
  GCycle,
  GDocumentFileTypes,
  GDocumentOutputInput,
  GDocumentTransformationInput,
  GFeedByCategoryIdData,
  GFeedByCategoryIdData_feedItems,
  GFeedByCategoryIdData_feedItems_mainImage,
  GFeedByCategoryIdData_feedItems_video,
  GFeedByCategoryIdReq,
  GFeedByCategoryIdVars,
  GFeedItemCategoryConnectInput,
  GFeedItemCategoryCreateInput,
  GFeedItemCategoryCreateManyInlineInput,
  GFeedItemCategoryCreateOneInlineInput,
  GFeedItemCategoryManyWhereInput,
  GFeedItemCategoryOrderByInput,
  GFeedItemCategoryUpdateInput,
  GFeedItemCategoryUpdateManyInlineInput,
  GFeedItemCategoryUpdateManyInput,
  GFeedItemCategoryUpdateManyWithNestedWhereInput,
  GFeedItemCategoryUpdateOneInlineInput,
  GFeedItemCategoryUpdateWithNestedWhereUniqueInput,
  GFeedItemCategoryUpsertInput,
  GFeedItemCategoryUpsertWithNestedWhereUniqueInput,
  GFeedItemCategoryWhereInput,
  GFeedItemCategoryWhereUniqueInput,
  GFeedItemConnectInput,
  GFeedItemCreateInput,
  GFeedItemCreateManyInlineInput,
  GFeedItemCreateOneInlineInput,
  GFeedItemManyWhereInput,
  GFeedItemOrderByInput,
  GFeedItemUpdateInput,
  GFeedItemUpdateManyInlineInput,
  GFeedItemUpdateManyInput,
  GFeedItemUpdateManyWithNestedWhereInput,
  GFeedItemUpdateOneInlineInput,
  GFeedItemUpdateWithNestedWhereUniqueInput,
  GFeedItemUpsertInput,
  GFeedItemUpsertWithNestedWhereUniqueInput,
  GFeedItemWhereInput,
  GFeedItemWhereUniqueInput,
  GFeedResponseData,
  GFeedResponseData_mainImage,
  GFeedResponseData_video,
  GFeedResponseReq,
  GFeedResponseVars,
  GGetAssetByFileNameData,
  GGetAssetByFileNameData_assets,
  GGetAssetByFileNameReq,
  GGetAssetByFileNameVars,
  GGetAssetByIdData,
  GGetAssetByIdData_assets,
  GGetAssetByIdReq,
  GGetAssetByIdVars,
  GGetCategoryByTypeData,
  GGetCategoryByTypeData_categories,
  GGetCategoryByTypeData_categories_mainImage,
  GGetCategoryByTypeReq,
  GGetCategoryByTypeVars,
  GImageFit,
  GImageResizeInput,
  GImageTransformationInput,
  GInspirationItemConnectInput,
  GInspirationItemCreateInput,
  GInspirationItemCreateManyInlineInput,
  GInspirationItemCreateOneInlineInput,
  GInspirationItemManyWhereInput,
  GInspirationItemOrderByInput,
  GInspirationItemUpdateInput,
  GInspirationItemUpdateManyInlineInput,
  GInspirationItemUpdateManyInput,
  GInspirationItemUpdateManyWithNestedWhereInput,
  GInspirationItemUpdateOneInlineInput,
  GInspirationItemUpdateWithNestedWhereUniqueInput,
  GInspirationItemUpsertInput,
  GInspirationItemUpsertWithNestedWhereUniqueInput,
  GInspirationItemWhereInput,
  GInspirationItemWhereUniqueInput,
  GInspirationResponseData,
  GInspirationResponseData_mainImage,
  GInspirationResponseData_video,
  GInspirationResponseReq,
  GInspirationResponseVars,
  GJson,
  GLevel,
  GLocale,
  GLocationInput,
  GLong,
  GMealSize,
  GMealType,
  GPlan,
  GPreExistingCondition,
  GPublishLocaleInput,
  GRGBAInput,
  GRichTextAST,
  GSex,
  GStage,
  GSystemDateTimeFieldVariation,
  GUnpublishLocaleInput,
  GUserConnectInput,
  GUserCreateManyInlineInput,
  GUserCreateOneInlineInput,
  GUserKind,
  GUserManyWhereInput,
  GUserOrderByInput,
  GUserUpdateManyInlineInput,
  GUserUpdateOneInlineInput,
  GUserWhereInput,
  GUserWhereUniqueInput,
  GVersionWhereInput,
  G_FilterKind,
  G_MutationInputFieldKind,
  G_MutationKind,
  G_OrderDirection,
  G_RelationInputCardinality,
  G_RelationInputKind,
  G_RelationKind,
  Guntitled
])
final Serializers serializers = _serializersBuilder.build();
