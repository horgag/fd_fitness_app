import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/auth_bloc.dart';
import 'component/auth_component.dart';
import 'model/auth_data_model.dart';

enum AuthType { signIn, signUp }

class AuthScreen extends StatelessWidget {
  const AuthScreen();

  static const String path = '/authScreen', _authDataModelKey = '_authDataModelKey';

  static Map<String, dynamic> setArgs({AuthDataModel? authData}) => <String, dynamic>{_authDataModelKey: authData};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final AuthDataModel authData = args?[_authDataModelKey] ?? const AuthDataModel();
    return BlocProvider<AuthBloc>(
      create: (_) => AuthBloc(authData, getIt<AuthRepository>()),
      child: const AuthComponent(),
    );
  }
}
