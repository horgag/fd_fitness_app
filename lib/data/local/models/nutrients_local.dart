import 'package:hive/hive.dart';

import 'package:fd_fitness_app/data/local/client/hive_adapters.dart';

part 'nutrients_local.g.dart';

@NutrientsLocalType()
class NutrientsLocal {
  NutrientsLocal({
    this.kcal = 0.0,
    this.carbs = 0.0,
    this.protein = 0.0,
    this.fat = 0.0,
  });

  @HiveField(0)
  final double kcal; 
  @HiveField(1)
  final double carbs;
  @HiveField(2)
  final double protein;
  @HiveField(3)
  final double fat;
}
