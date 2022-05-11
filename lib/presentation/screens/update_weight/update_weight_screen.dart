import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/update_weight_bloc.dart';
import 'component/update_weight_component.dart';

enum UpdateWeightType { endOfPhase, standard }

class UpdateWeightScreen extends StatelessWidget {
  const UpdateWeightScreen({Key? key}) : super(key: key);
  static const String path = '/updateWeightScreen', _typeKey = '_typeKey';

  static Map<String, dynamic> setArgs(UpdateWeightType type) => <String, dynamic>{_typeKey: type};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final UpdateWeightType type = args?[_typeKey]!;
    return BlocProvider<UpdateWeightBloc>(
      create: (_) => UpdateWeightBloc(
        type,
        getIt<UserRepository>(),
        getIt<AuthRepository>(),
      ),
      child: const UpdateWeightComponent(),
    );
  }
}
