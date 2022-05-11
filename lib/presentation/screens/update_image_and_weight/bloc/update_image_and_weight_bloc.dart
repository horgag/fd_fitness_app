import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/mixins/media_picker/media_picker_mixin.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/measures/user_measures.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:image_picker/image_picker.dart';

import '../update_image_and_weight_screen.dart';

part 'update_image_and_weight_event.dart';

part 'update_image_and_weight_state.dart';

typedef OnPickImageCallback = void Function(double? maxWidth, double? maxHeight, int? quality);

class UpdateImageAndWeightBloc extends Bloc<UpdateImageAndWeightEvent, UpdateImageAndWeightState> with MediaPickerMixin {
  UpdateImageAndWeightBloc(this.type, this._userRepository, this._authRepository, this._imageStorageRepository)
      : super(
          const UpdateImageAndWeightInitial(),
        );

  final UserRepository _userRepository;
  final AuthRepository _authRepository;
  final ImageStorageRepository _imageStorageRepository;
  final UpdateImageAndWeightType type;

  int? lostWeight;

  @override
  Stream<UpdateImageAndWeightState> mapEventToState(UpdateImageAndWeightEvent event) async* {
    if (event is SaveDataEvent) {
      yield* _saveData(event.weight);
    }
  }

  Stream<UpdateImageAndWeightState> _saveData(int weight) async* {
    yield const LoadingState();
    yield await _authRepository
        .authModel()
        .then(
          (AuthModel value) => Future.wait<UpdateImageAndWeightState>(
            <Future<UpdateImageAndWeightState>>[
              _saveWeight(value.userId!, weight),
              _saveImages(value.userId!),
            ],
          ).then<UpdateImageAndWeightState>(_handleSaveData).catchError(_handleErrorSavingData),
        )
        .catchError(_handleErrorFetchingAuth);
  }

  UpdateImageAndWeightState _handleSaveData(List<UpdateImageAndWeightState> value) {
    final bool isFailedSavingData = value.every((UpdateImageAndWeightState element) => element is BaseFailedState);
    final UpdateImageAndWeightState? failedAnyState =
        value.firstWhereOrNull((UpdateImageAndWeightState element) => element is BaseFailedState);
    if (isFailedSavingData) {
      return const FailedSavingDataState();
    } else if (failedAnyState != null) {
      return failedAnyState;
    } else {
      if (type == UpdateImageAndWeightType.endOfPhase) {
        return SucceedSavingDataState(lostWeight: lostWeight);
      }
      return const SucceedSavingDataState();
    }
  }

  Future<UpdateImageAndWeightState> _saveWeight(String userId, int weight) async {
    final UserModel? user = await _userRepository.getUser(userId);
    if (type == UpdateImageAndWeightType.endOfPhase) {
      final int? userWeight = user?.weight;
      lostWeight = weight - (userWeight ?? weight);
    }
    return _userRepository
        .updateMeasures(userId, UserMeasures.copy(user!.userMeasures!, weight: weight))
        .then<UpdateImageAndWeightState>((_) => const SucceedSavingDataState())
        .catchError(
      (Object error) {
        Log().e('Failed saving weight: $error');
        return const FailedSavingWeightState();
      },
    );
  }

  Future<UpdateImageAndWeightState> _saveImages(String userId) async {
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
      Log().e('Fialed to save images: $e');
    }
    return const FailedUploadingImagesState();
  }

  UpdateImageAndWeightState _handleErrorFetchingAuth(Object error) {
    Log().e('Fetching authModel failed: $error');
    return const FailedFetchingAuthModelState();
  }

  UpdateImageAndWeightState _handleErrorSavingData(Object error) {
    Log().e('Failed saving data: $error');
    return const FailedSavingDataState();
  }
}
