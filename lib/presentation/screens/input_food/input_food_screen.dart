import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/food_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/recent_food_search_repository.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/get_it_type_builder/ready_type_builder.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';

import 'bloc/input_food_bloc.dart';
import 'component/input_food_component.dart';

class InputFoodScreen extends StatelessWidget {
  const InputFoodScreen({Key? key}) : super(key: key);

  static const String path = '/foodSearchListScreen', _mealTypeKey = '_mealTypeKey';

  static Map<String, dynamic> setArgs(MealType mealType) => <String, dynamic>{
        _mealTypeKey: mealType,
      };

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final MealType mealType = args?[_mealTypeKey]!;
    return ReadyTypeBuilder<RecentFoodSearchRepository>(
      getIt: getIt,
      readyBuilder: (BuildContext context, RecentFoodSearchRepository data) => BlocProvider<InputFoodBloc>(
        create: (_) => InputFoodBloc(
          data,
          getIt<FoodRepository>(),
        ),
        child: InputFoodComponent(mealType: mealType),
      ),
      notReadyBuilder: (BuildContext context) => const Material(
        child: Center(child: FdLoader()),
      ),
    );
  }
}
