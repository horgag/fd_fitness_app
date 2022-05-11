import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';

import 'component/health_issues_component.dart';
import 'cubit/health_issues_cubit.dart';

class HealthIssuesScreen extends StatelessWidget {
  const HealthIssuesScreen({Key? key}) : super(key: key);

  static const String path = '/healthIssues';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HealthIssuesCubit>(
      create: (_) => HealthIssuesCubit(getIt<AuthRepository>(), getIt<UserRepository>()),
      child: const HealthIssuesComponent(),
    );
  }
}
