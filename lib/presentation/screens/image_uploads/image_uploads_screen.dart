import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/image_uploads_bloc.dart';
import 'component/image_uploads_component.dart';

class ImageUploadsScreen extends StatelessWidget {
  const ImageUploadsScreen({Key? key}) : super(key: key);
  static const String path = '/imageUploadsScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImageUploadsBloc>(
      create: (_) => ImageUploadsBloc(
        getIt<AuthRepository>(),
        getIt<ImageStorageRepository>(),
      ),
      child: const ImageUploadsComponent(),
    );
  }
}
