import 'package:fd_fitness_app/data/local/models/food_local.dart';
import 'package:fd_fitness_app/data/local/models/measure_local.dart';
import 'package:fd_fitness_app/data/local/models/nutrients_local.dart';
import 'package:fd_fitness_app/data/local/models/servings_size_local.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/servings_size.dart';

import '../mapper.dart';

class FoodDomainToLocalMapper implements Mapper<Food, FoodLocal> {
  @override
  FoodLocal map(Food from) => FoodLocal(
        id: from.id,
        label: from.label,
        image: from.image,
        category: from.category,
        categoryLabel: from.categoryLabel,
        nutrients: NutrientsLocal(
          kcal: from.nutrients?.kcal ?? 0.0,
          carbs: from.nutrients?.carbs ?? 0.0,
          protein: from.nutrients?.protein ?? 0.0,
          fat: from.nutrients?.fat ?? 0.0,
        ),
        measures: MeasuresLocal(
          label: from.measures?.label ?? '',
          weight: from.measures?.weight ?? 0.0,
          servingSize: from.measures?.servingSize
                  .map(
                    (ServingSize e) => ServingSizeLocal(
                      label: e.label,
                      weight: e.weight,
                    ),
                  )
                  .toList() ??
              <ServingSizeLocal>[],
        ),
      );
}
