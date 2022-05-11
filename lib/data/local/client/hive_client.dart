import 'package:fd_fitness_app/data/local/models/food_local.dart';
import 'package:fd_fitness_app/data/local/models/measure_local.dart';
import 'package:fd_fitness_app/data/local/models/nutrients_local.dart';
import 'package:fd_fitness_app/data/local/models/servings_size_local.dart';
import 'package:hive/hive.dart';

class HiveClient {
  factory HiveClient() => _singleton;

  HiveClient._();

  HiveClient.init() {
    Hive
      ..registerAdapter<FoodLocal>(FoodLocalAdapter())
      ..registerAdapter<MeasuresLocal>(MeasuresLocalAdapter())
      ..registerAdapter<NutrientsLocal>(NutrientsLocalAdapter())
      ..registerAdapter<ServingSizeLocal>(ServingSizeLocalAdapter());
  }

  static final HiveClient _singleton = HiveClient._();

  static const String foodBoxKey = 'foodBoxKey';

  Future<Box<T>> fetchBox<T>(String key) async {
    if (Hive.isBoxOpen(key))
      return Hive.box<T>(key);
    else
      return await Hive.openBox<T>(key);
  }

  Future<void> dispose(){
    return Hive.close();
  }
}
