import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meals_container.dart';

abstract class UserMealDiaryRepository {
  Future<void> addFood(String userId, Food food);
  Future<MealsContainer?> getMealDiary(String userId, [DateTime? date]);
  Future<void> removeFood(String userId, Food food, [DateTime? date]);
  Future<void> updateFood(String userId, Food food, [DateTime? date]);
  Future<void> updateCustomCalories(String userId, int customCalories, [DateTime? date]);
  Future<void> clear(String userId);
}
