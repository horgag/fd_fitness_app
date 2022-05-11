import 'package:fd_fitness_app/data/food_api/models/food/food.dart';
import 'package:fd_fitness_app/data/food_api/models/food/food_hints.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart' as domain;
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';

import '../mapper.dart';

class FoodResponseToFoodBagMapper implements Mapper<FoodResponseNet, FoodBag> {
  late final Mapper<HintsNet, domain.Food> _foodMapper = getIt<Mapper<HintsNet, domain.Food>>();

  @override
  FoodBag map(FoodResponseNet from) => FoodBag(
        nextPageLink: from.nextLink,
        foodList: from.hints.isNotEmpty ? from.hints.map<domain.Food>(_foodMapper.map).toList() : <domain.Food>[],
      );
}
