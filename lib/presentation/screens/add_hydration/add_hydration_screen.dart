import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';

import 'component/add_hydration_component.dart';
import 'cubit/add_hydration_cubit.dart';

class AddHydrationScreen extends StatelessWidget {
  const AddHydrationScreen({Key? key}) : super(key: key);

  static const String path = '/addHydrationScreen', _foodKey = '_foodKey';

  static Map<String, dynamic> setArgs(Food? food) => <String, dynamic>{_foodKey: food};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final Food? hydration = args?[_foodKey];
    return BlocProvider<AddHydrationCubit>(
      create: (_) => AddHydrationCubit(
        hydration,
        getIt<AuthRepository>(),
        getIt<UserMealDiaryRepository>(),
      ),
      child: const AddHydrationComponent(),
    );
  }
}
