import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/measures/user_measures.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

import '../update_weight_screen.dart';

part 'update_weight_event.dart';

part 'update_weight_state.dart';

class UpdateWeightBloc extends Bloc<UpdateWeightEvent, UpdateWeightState> {
  UpdateWeightBloc(this.type, this._userRepository, this._authRepository)
      : super(
          const UpdateWeightInitial(),
        );

  final UserRepository _userRepository;
  final AuthRepository _authRepository;
  final UpdateWeightType type;

  int? lostWeight;

  @override
  Stream<UpdateWeightState> mapEventToState(UpdateWeightEvent event) async* {
    if (event is SaveDataEvent) {
      yield* _saveData(event.weight);
    }
  }

  Stream<UpdateWeightState> _saveData(int weight) async* {
    yield const LoadingState();
    yield await _authRepository
        .authModel()
        .then(
          (AuthModel value) => Future.wait<UpdateWeightState>(
            <Future<UpdateWeightState>>[
              _saveWeight(value.userId!, weight),
            ],
          ).then<UpdateWeightState>(_handleSaveData).catchError(_handleErrorSavingData),
        )
        .catchError(_handleErrorFetchingAuth);
  }

  UpdateWeightState _handleSaveData(List<UpdateWeightState> value) {
    final bool isFailedSavingData = value.every((UpdateWeightState element) => element is BaseFailedState);
    final UpdateWeightState? failedAnyState = value.firstWhereOrNull((UpdateWeightState element) => element is BaseFailedState);
    if (isFailedSavingData) {
      return const FailedSavingDataState();
    } else if (failedAnyState != null) {
      return failedAnyState;
    } else {
      if (type == UpdateWeightType.endOfPhase) {
        return SucceedSavingDataState(lostWeight: lostWeight);
      }
      return const SucceedSavingDataState();
    }
  }

  Future<UpdateWeightState> _saveWeight(String userId, int weight) async {
    final UserModel? user = await _userRepository.getUser(userId);
    if (type == UpdateWeightType.endOfPhase) {
      final int? userWeight = user?.weight;
      lostWeight = weight - (userWeight ?? weight);
    }
    return _userRepository
        .updateMeasures(userId, UserMeasures.copy(user!.userMeasures!, weight: weight))
        .then<UpdateWeightState>((_) => const SucceedSavingDataState())
        .catchError(
      (Object error) {
        Log().e('Failed saving weight: $error');
        return const FailedSavingWeightState();
      },
    );
  }

  UpdateWeightState _handleErrorFetchingAuth(Object error) {
    Log().e('Fetching authModel failed: $error');
    return const FailedFetchingAuthModelState();
  }

  UpdateWeightState _handleErrorSavingData(Object error) {
    Log().e('Failed saving data: $error');
    return const FailedSavingDataState();
  }
}
