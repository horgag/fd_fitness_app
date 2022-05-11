import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';

abstract class RecentFoodSearchRepository {
  Future<void> clear();
  Future<int> addFood(Food food);
  Future<void> removeFood(Food food);
  FoodBag searchFor(String query);
  FoodBag queryAll();
}
