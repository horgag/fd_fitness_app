import 'package:hive/hive.dart';

import 'package:fd_fitness_app/data/local/client/hive_adapters.dart';

import 'measure_local.dart';
import 'nutrients_local.dart';

part 'food_local.g.dart';

@FoodLocalType()
class FoodLocal {
  const FoodLocal({
    this.id,
    this.label,
    this.image,
    this.category,
    this.categoryLabel,
    this.nutrients,
    this.measures,
  });

  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String? label;
  @HiveField(2)
  final String? image;
  @HiveField(3)
  final String? category;
  @HiveField(4)
  final String? categoryLabel;
  @HiveField(6)
  final NutrientsLocal? nutrients;
  @HiveField(7)
  final MeasuresLocal? measures;
}
