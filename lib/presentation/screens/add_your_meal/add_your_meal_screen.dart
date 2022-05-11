import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/meal_assets/meal_assets_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';

import 'bloc/add_your_meal_bloc.dart';
import 'component/add_your_meal_component.dart';

class AddYourMealScreen extends StatelessWidget {
  const AddYourMealScreen({Key? key}) : super(key: key);

  static const String path = '/addYourMealScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddYourMealBloc>(
      create: (_) => AddYourMealBloc(
        getIt<UserRepository>(),
        getIt<AuthRepository>(),
        getIt<MealAssetsRepository>(),
        getIt<UserMealDiaryRepository>(),
      ),
      child: const AddYourMealComponent(),
    );
  }
}
