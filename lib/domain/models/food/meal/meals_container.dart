import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/health_helper/health_helper.dart';

import '../servings.dart';

class MealsContainer extends Equatable {
  MealsContainer({required this.userModel, this.meals = const <Meal>[], DateTime? dateTime, this.maxCaloriesCustom})
      : dateTime = dateTime ?? DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  MealsContainer.copyWith(
    MealsContainer copy, {
    List<Meal>? meals,
    UserModel? userModel,
    DateTime? dateTime,
    int? maxCaloriesCustom,
  })  : meals = meals ?? copy.meals,
        userModel = userModel ?? copy.userModel,
        dateTime = dateTime ?? copy.dateTime,
        maxCaloriesCustom = maxCaloriesCustom ?? copy.maxCaloriesCustom;

  MealsContainer.fromJson(Map<String, dynamic> json, this.userModel, [DateTime? dateTime])
      : meals = json[mealsKey] != null
            ? json[mealsKey].map((dynamic json) {
                return Meal.fromJson(json);
              }).toList()
            : <Meal>[],
        dateTime = dateTime ?? DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day),
        maxCaloriesCustom = json[mealsKey].map((dynamic json) {
          return json['maxCaloriesCustom'];
        });

  static const String mealsKey = 'mealsKey';

  final List<Meal> meals;
  final UserModel userModel;
  final DateTime? dateTime;
  final int? maxCaloriesCustom;

  int get consumedCalories => meals.fold(0, (int previousValue, Meal element) => previousValue += element.consumedCalories);

  int get bmr => HealthHelper.bmr(userModel);

  bool get didSlipUp => consumedCalories > bmr;

  int get consumedWater {
    final int numberOfGlasses = meals.fold(0, (int previousValue, Meal meal) => previousValue + meal.foodBag.glassesOfWater);
    return numberOfGlasses * GLASS_OF_WATER_ML.toInt();
  }

  static int todayTimestamp() {
    final DateTime currentDay = DateTime.now();
    final DateTime recordDay = DateTime(currentDay.year, currentDay.month, currentDay.day);
    return recordDay.millisecondsSinceEpoch;
  }

  @override
  List<Object?> get props => <Object?>[meals];

  @override
  bool get stringify => true;
}
