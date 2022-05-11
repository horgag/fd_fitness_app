import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/presentation/screens/progress/bloc/progress_cubit.dart';
import 'package:fd_fitness_app/presentation/screens/progress/component/progress_component.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({Key? key}): super(key: key);

  static const String path = '/progress';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProgressCubit>(
      create: (_) => ProgressCubit(
        getIt<UserMealDiaryRepository>(),
        getIt<AuthRepository>(),
      ),
      child: const ProgressComponent(),
    );
  }
}
