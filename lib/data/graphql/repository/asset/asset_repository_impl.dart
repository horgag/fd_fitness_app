import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:rxdart/rxdart.dart';

import 'package:fd_fitness_app/data/api/constants.dart';
import 'package:fd_fitness_app/data/graphql/exceptions/fd_graphql_exception.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.req.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.var.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.req.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.var.gql.dart';
import 'package:fd_fitness_app/data/mappers/mapper.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/asset/asset_repository.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';

class AssetRepositoryImpl implements AssetRepository {
  AssetRepositoryImpl(this.client)
      : mapper = getIt<Mapper<GGetAssetByIdData_assets, AssetModel>>(),
        asetByNameToAsset = getIt<Mapper<GGetAssetByFileNameData_assets, AssetModel>>();

  final TypedLink client;
  final Mapper<GGetAssetByIdData_assets, AssetModel> mapper;
  final Mapper<GGetAssetByFileNameData_assets, AssetModel> asetByNameToAsset;

  @override
  Future<AssetModel?> getAssetById(String id) =>
      client.request(GGetAssetByIdReq((GGetAssetByIdReqBuilder b) => b..vars.assetID = id)).first.then(
        (OperationResponse<GGetAssetByIdData, GGetAssetByIdVars> event) {
          return event.hasErrors ? throw FdGraphqlException(event) : event.data?.assets.map(mapper.map).toBuiltList().first;
        },
      );

  @override
  Future<AssetModel?> getAssetByName(String name) =>
      client.request(GGetAssetByFileNameReq((GGetAssetByFileNameReqBuilder b) => b..vars.assetFileName = name)).first.then(
        (OperationResponse<GGetAssetByFileNameData, GGetAssetByFileNameVars> event) {
          return event.hasErrors ? throw FdGraphqlException(event) : event.data?.assets.map(asetByNameToAsset.map).toBuiltList().first;
        },
      );

  @override
  Future<BuiltList<AssetModel>?> getWelcomeAssets() {
    return Rx.combineLatest2(
      getAssetById(welcomeVideoId).asStream(),
      getAssetById(welcomeImageId).asStream(),
      (AssetModel? video, AssetModel? image) => video != null && image != null
          ? BuiltList<AssetModel>.from(
              <AssetModel>[video, image],
            )
          : null,
    ).first;
  }
}
