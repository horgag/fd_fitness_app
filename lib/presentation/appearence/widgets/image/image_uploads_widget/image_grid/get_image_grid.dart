import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/mixins/media_picker/media_picker_mixin.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/image_grid_component.dart';
import 'cubit/image_grid_cubit.dart';

class ImageGrid extends StatefulWidget {
  const ImageGrid({required this.imageGridSubtitle, required this.imageManagerMixin});

  final MediaPickerMixin imageManagerMixin;
  final String imageGridSubtitle;

  @override
  _ImageGridState createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImageGridCubit>(
      create: (_) => ImageGridCubit(
        getIt<ImageStorageRepository>(),
        getIt<AuthRepository>(),
      ),
      child: ImageGridComponent(
        imageGridSubtitle: widget.imageGridSubtitle,
        imageManagerMixin: widget.imageManagerMixin,
      ),
    );
  }
}
