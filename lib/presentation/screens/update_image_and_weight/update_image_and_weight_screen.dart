import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/update_image_and_weight_bloc.dart';
import 'component/update_image_and_weight_component.dart';

enum UpdateImageAndWeightType { endOfPhase, standard }

class UpdateImageAndWeightScreen extends StatelessWidget {
  const UpdateImageAndWeightScreen({Key? key}) : super(key: key);
  static const String path = '/updateImageAndWeightScreen', _typeKey = '_typeKey';

  static Map<String, dynamic> setArgs(UpdateImageAndWeightType type) => <String, dynamic>{_typeKey: type};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final UpdateImageAndWeightType type = args?[_typeKey]!;
    return BlocProvider<UpdateImageAndWeightBloc>(
      create: (_) => UpdateImageAndWeightBloc(
        type,
        getIt<UserRepository>(),
        getIt<AuthRepository>(),
        getIt<ImageStorageRepository>(),
      ),
      child: const UpdateImageAndWeightComponent(),
    );
  }
}
