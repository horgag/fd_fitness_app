import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';

abstract class MealAssetsRepository {
  Future<AssetModel?> getAssetByMealType(MealType type);
  String getImageUrlByMealType(MealType type);
}
