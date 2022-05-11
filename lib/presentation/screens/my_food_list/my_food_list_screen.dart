import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';

import 'component/my_food_list_component.dart';
import 'cubit/my_food_list_cubit.dart';

class MyFoodListScreen extends StatelessWidget {
  const MyFoodListScreen({Key? key}) : super(key: key);

  static const String path = '/myFoodListScreen', _foodBagKey = '_foodBagKey';

  static Map<String, dynamic> setArgs(FoodBag foodBag) => <String, dynamic>{_foodBagKey: foodBag};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final FoodBag foodBag = args?[_foodBagKey]!;
    return BlocProvider<MyFoodListCubit>(
      create: (_) => MyFoodListCubit(
        foodBag,
        getIt<AuthRepository>(),
        getIt<UserMealDiaryRepository>(),
      ),
      child: const MyFoodListComponent(),
    );
  }
}
