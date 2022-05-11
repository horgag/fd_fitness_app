import 'package:fd_fitness_app/domain/models/food/food_bag.dart';

abstract class FoodRepository {
  Future<FoodBag?> searchFood(String search, {String? nextLink});
  Future<FoodBag?> parserFood(String search, {String? nextLink});
}
