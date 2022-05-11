import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/cubit/activity_level_cubit.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/component/activity_level_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActivityLevelScreen extends StatelessWidget {
  const ActivityLevelScreen({Key? key}) : super(key: key);

  static const String path = '/activityLevel';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ActivityLevelCubit>(
      create: (_) => ActivityLevelCubit(getIt<AuthRepository>(), getIt<UserRepository>()),
      child: const ActivityLevelComponent(),
    );
  }
}
