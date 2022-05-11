import 'package:hive/hive.dart';

import 'package:fd_fitness_app/data/local/client/hive_adapters.dart';

import 'servings_size_local.dart';

part 'measure_local.g.dart';

@MeasuresLocalType()
class MeasuresLocal {
  MeasuresLocal({required this.label, required this.weight, required this.servingSize});

  /// Weight in grams that represents medium sized food
  @HiveField(0)
  final double weight;
  @HiveField(1)
  final String label;
  @HiveField(2)
  final List<ServingSizeLocal> servingSize;
}
