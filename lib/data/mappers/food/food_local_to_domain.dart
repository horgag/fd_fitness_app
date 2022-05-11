import 'package:fd_fitness_app/data/local/models/food_local.dart';
import 'package:fd_fitness_app/data/local/models/servings_size_local.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/measure.dart';
import 'package:fd_fitness_app/domain/models/food/nutrients.dart';
import 'package:fd_fitness_app/domain/models/food/servings_size.dart';

import '../mapper.dart';

class FoodLocalToDomainMapper implements Mapper<FoodLocal, Food> {
  @override
  Food map(FoodLocal from) => Food(
        id: from.id,
        label: from.label,
        image: from.image,
        category: from.category,
        categoryLabel: from.categoryLabel,
        nutrients: Nutrients(
          kcal: from.nutrients?.kcal ?? 0.0,
          carbs: from.nutrients?.carbs ?? 0.0,
          protein: from.nutrients?.protein ?? 0.0,
          fat: from.nutrients?.fat ?? 0.0,
        ),
        measures: Measures(
          label: from.measures?.label ?? '',
          weight: from.measures?.weight ?? 0.0,
          servingSize: from.measures?.servingSize
                  .map(
                    (ServingSizeLocal e) => ServingSize(
                      label: e.label,
                      weight: e.weight,
                    ),
                  )
                  .toList() ??
              <ServingSize>[],
        ),
      );
}
