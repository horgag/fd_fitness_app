import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/main_component.dart';
import 'cubit/connectivity/connectivity_cubit.dart';
import 'cubit/main/main_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen();
  static const String path = '/mainScreen';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<ConnectivityCubit>(
          create: (_) => ConnectivityCubit(),
        ),
        BlocProvider<MainCubit>(
          create: (_) => MainCubit(
            getIt<UserRepository>(),
            getIt<AuthRepository>(),
          ),
        ),
      ],
      child: const MainComponent(),
    );
  }
}
