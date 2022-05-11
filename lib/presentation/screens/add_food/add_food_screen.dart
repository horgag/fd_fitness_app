import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/recent_food_search_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/presentation/screens/add_food/component/add_food_component.dart';

import 'cubit/add_food_cubit.dart';

class AddFoodScreen extends StatelessWidget {
  const AddFoodScreen({Key? key}) : super(key: key);

  static const String path = '/addFoodScreen', _foodKey = '_foodKey';

  static Map<String, dynamic> setArgs(Food food) => <String, dynamic>{_foodKey: food};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final Food food = args?[_foodKey]!;
    return BlocProvider<AddFoodCubit>(
      create: (_) => AddFoodCubit(
        food,
        getIt<RecentFoodSearchRepository>(),
        getIt<UserMealDiaryRepository>(),
        getIt<AuthRepository>(),
      ),
      child: const AddFoodComponent(),
    );
  }
}
