import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../food.dart';
import '../food_bag.dart';
import 'meal_type.dart';

class Meal extends Equatable {
  const Meal({
    this.mealType = MealType.breakfast,
    this.imageUrl,
    this.foodBag = const FoodBag(),
  });

  Meal.fromJson(Map<String, dynamic> json)
      : mealType = json[mealTypeKey] != null ? json[mealTypeKey].toMealType() : MealType.breakfast,
        imageUrl = json[imageUrlKey],
        foodBag = json[foodBagKey] != null ? FoodBag.fromJson(json[foodBagKey]) : const FoodBag();

  Meal.copyWith(
    Meal copy, {
    MealType? mealType,
    String? imageUrl,
    FoodBag? foodBag,
  })  : mealType = mealType ?? copy.mealType,
        imageUrl = imageUrl ?? copy.imageUrl,
        foodBag = foodBag ?? copy.foodBag;

  final MealType mealType;
  final String? imageUrl;
  final FoodBag foodBag;

  static const String mealTypeKey = 'mealTypeKey', imageUrlKey = 'imageUrlKey', foodBagKey = 'foodBagKey';

  int get maxCalories {
    const int maxCaloriesConst = 450, maxGlasses = 5;
    switch (mealType) {
      case MealType.breakfast:
        return maxCaloriesConst;
      case MealType.lunch:
        return maxCaloriesConst;
      case MealType.dinner:
        return maxCaloriesConst;
      case MealType.snacks:
        return maxCaloriesConst;
      case MealType.hydration:
      default:
        return maxGlasses;
    }
  }

  // Returns actual calories of food
  int get consumedCalories => foodBag.foodList.isEmpty
      ? 0
      : foodBag.foodList.fold(
          0,
          (int prev, Food el) => prev += el.servings?.nutrients.kcal.toInt() ?? 0,
        );

  // Returns glasses of water for hydration and all consumed calories for other meals
  int get consumedCaloriesAndWater => mealType == MealType.hydration ? foodBag.glassesOfWater : consumedCalories;

  @override
  List<Object?> get props => <Object?>[mealType, imageUrl, foodBag];

  @override
  bool get stringify => true;

  Map<String, dynamic> toJson() => <String, dynamic>{
        mealTypeKey: describeEnum(mealType).toLowerCase(),
        imageUrlKey: imageUrl,
        foodBagKey: foodBag.toJson(),
      };
}
