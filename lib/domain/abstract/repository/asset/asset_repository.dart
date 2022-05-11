import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';

abstract class AssetRepository {
  Future<AssetModel?> getAssetById(String id);
  Future<AssetModel?> getAssetByName(String name);
  Future<BuiltList<AssetModel>?> getWelcomeAssets();
}
