import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:hive/hive.dart';

import 'package:fd_fitness_app/data/local/models/food_local.dart';
import 'package:fd_fitness_app/data/mappers/mapper.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/recent_food_search_repository.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';

class RecentFoodSearchRepositoryImpl implements RecentFoodSearchRepository {
  RecentFoodSearchRepositoryImpl(this._foodBox)
      : _domainFoodToLocalMapper = getIt<Mapper<Food, FoodLocal>>(),
        _localFoodToDomainMapper = getIt<Mapper<FoodLocal, Food>>();

  final Box<FoodLocal> _foodBox;
  final Mapper<Food, FoodLocal> _domainFoodToLocalMapper;
  final Mapper<FoodLocal, Food> _localFoodToDomainMapper;

  @override
  Future<int> addFood(Food food) async {
    final bool isExist = searchFor(food.label!).foodList.any((Food el) => el.id == food.id);
    if (isExist) return -1;
    final FoodLocal foodLocal = _domainFoodToLocalMapper.map(food);
    return _foodBox.add(foodLocal);
  }

  @override
  Future<void> removeFood(Food food) {
    final List<FoodLocal> items = _foodBox.values.toList();
    final int index = items.indexWhere((FoodLocal element) => element.id == food.id);
    return _foodBox.deleteAt(index);
  }

  @override
  FoodBag searchFor(String query) {
    final List<FoodLocal> items = _foodBox.values
        .where(
          (FoodLocal element) => element.label!.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    return FoodBag(foodList: List<Food>.from(items.map<Food>(_localFoodToDomainMapper.map)));
  }

  @override
  FoodBag queryAll() {
    return FoodBag(foodList: List<Food>.from(_foodBox.values.map<Food>(_localFoodToDomainMapper.map)));
  }

  @override
  Future<void> clear() {
    return _foodBox.clear();
  }
}
