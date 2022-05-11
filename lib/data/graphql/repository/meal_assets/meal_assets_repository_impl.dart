import 'package:fd_fitness_app/data/api/constants.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/asset/asset_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/meal_assets/meal_assets_repository.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';

class MealAssetsRepositoryImpl implements MealAssetsRepository {
  MealAssetsRepositoryImpl() : _assetRepository = getIt<AssetRepository>();

  final AssetRepository _assetRepository;

  @override
  Future<AssetModel?> getAssetByMealType(MealType type) {
    final String fileName = _getImagefileNameByMealType(type);
    return _assetRepository.getAssetByName(fileName);
  }

  String _getImagefileNameByMealType(MealType type) {
    switch (type) {
      case MealType.breakfast:
        return breakfastImageFileName;
      case MealType.lunch:
        return lunchImageFileName;
      case MealType.dinner:
        return dinnerImageFileName;
      case MealType.snacks:
        return snacksImageFileName;
      case MealType.hydration:
      default:
        return hydrationImageFileName;
    }
  }

  @override
  String getImageUrlByMealType(MealType type) {
     switch (type) {
      case MealType.breakfast:
        return breakfastImageUrl;
      case MealType.lunch:
        return lunchImageUrl;
      case MealType.dinner:
        return dinnerImageUrl;
      case MealType.snacks:
        return snacksImageUrl;
      case MealType.hydration:
      default:
        return hydrationImageUrl;
    }
  }
}
