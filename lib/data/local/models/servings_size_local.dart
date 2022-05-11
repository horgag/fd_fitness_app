import 'package:fd_fitness_app/data/local/client/hive_adapters.dart';
import 'package:hive/hive.dart';

part 'servings_size_local.g.dart';

@ServingSizeLocalType()
class ServingSizeLocal {
  const ServingSizeLocal({required this.label, required this.weight});

  /// Weight in grams
  @HiveField(0)
  final double weight;
  @HiveField(1)
  final String? label;
}
