import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/mixins/media_picker/media_picker_mixin.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:image_picker/image_picker.dart';

part 'image_uploads_event.dart';

part 'image_uploads_state.dart';

typedef OnPickImageCallback = void Function(double? maxWidth, double? maxHeight, int? quality);

class ImageUploadsBloc extends Bloc<ImageUploadsEvent, ImageUploadsState> with MediaPickerMixin {
  ImageUploadsBloc(this._authRepository, this._imageStorageRepository)
      : super(
          const ImageUploadsInitial(),
        );

  final AuthRepository _authRepository;
  final ImageStorageRepository _imageStorageRepository;

  @override
  Stream<ImageUploadsState> mapEventToState(ImageUploadsEvent event) async* {
    if (event is SaveDataEvent) {
      yield* _saveData();
    }
  }

  Stream<ImageUploadsState> _saveData() async* {
    yield const LoadingState();
    yield await _authRepository
        .authModel()
        .then(
          (AuthModel value) => Future.wait<ImageUploadsState>(
            <Future<ImageUploadsState>>[
              _saveImages(value.userId!),
            ],
          ).then<ImageUploadsState>(_handleSaveData).catchError(_handleErrorSavingData),
        )
        .catchError(_handleErrorFetchingAuth);
  }

  ImageUploadsState _handleSaveData(List<ImageUploadsState> value) {
    final bool isFailedSavingData = value.every((ImageUploadsState element) => element is BaseFailedState);
    final ImageUploadsState? failedAnyState = value.firstWhereOrNull((ImageUploadsState element) => element is BaseFailedState);
    if (isFailedSavingData) {
      return const FailedSavingDataState();
    } else if (failedAnyState != null) {
      return failedAnyState;
    } else {
      return const SucceedSavingDataState();
    }
  }

  Future<ImageUploadsState> _saveImages(String userId) async {
    if (pickedFiles.isEmpty) return const SucceedSavingDataState();
    try {
      final List<bool> results = await Future.wait<bool>(
        pickedFiles.map(
          (XFile e) => _imageStorageRepository.uploadImage(userId, e.path, e.name),
        ),
      );
      final bool isSucceed = results.every((bool element) => element);
      Log().d('${isSucceed ? 'Succeed' : 'Failed'} saving images');
      return isSucceed ? const SucceedSavingDataState() : const FailedUploadingImagesState();
    } catch (e) {
      Log().e('Failed to save images: $e');
    }
    return const FailedUploadingImagesState();
  }

  ImageUploadsState _handleErrorFetchingAuth(Object error) {
    Log().e('Fetching authModel failed: $error');
    return const FailedFetchingAuthModelState();
  }

  ImageUploadsState _handleErrorSavingData(Object error) {
    Log().e('Failed saving data: $error');
    return const FailedSavingDataState();
  }
}
