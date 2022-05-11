import 'package:fd_fitness_app/data/food_api/models/food/food_hints.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/measure.dart';
import 'package:fd_fitness_app/domain/models/food/nutrients.dart';

import '../mapper.dart';

class HintsToMealFoodMapper implements Mapper<HintsNet, Food> {
  final Mapper<HintsNet, Measures> _measureMapper = getIt<Mapper<HintsNet, Measures>>();

  @override
  Food map(HintsNet from) => Food(
        id: from.food?.foodId,
        label: from.food?.label,
        image: from.food?.image,
        category: from.food?.category,
        categoryLabel: from.food?.categoryLabel,
        nutrients: Nutrients(
          kcal: from.food?.nutrients?.enercKcal ?? 0.0,
          carbs: from.food?.nutrients?.chocdf ?? 0.0,
          fat: from.food?.nutrients?.fat ?? 0.0,
          protein: from.food?.nutrients?.procnt ?? 0.0,
        ),
        measures: _measureMapper.map(from),
      );
}
