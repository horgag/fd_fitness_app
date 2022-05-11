import 'package:bloc/bloc.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/activity_level_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/cubit/activity_level_state.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

class ActivityLevelCubit extends Cubit<ActivityLevelState> {
  ActivityLevelCubit(this._authRepository, this._userRepository) : super(ActivityLevelLoading());

  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  Future<void> getUsersCurrentActivityLevel() async {
    emit(ActivityLevelLoading());
    try {
      final AuthModel authModel = await _authRepository.authModel();
      final UserModel? user = await _userRepository.getUser(authModel.userId!);
      emit(ActivityLevelSelected(user?.activenessDuringDay));
    } catch (e, stk) {
      emit(ActivityLevelError(e.toString()));
      Log().e(e.toString(), stk);
    }
  }

  void selectActivityLevel(ActivityLevelType activityLevelType) {
    emit(ActivityLevelSelected(activityLevelType));
  }

  Future<void> saveActivityLevel(ActivityLevelType activityLevelType) async {
    emit(ActivityLevelLoading());
    try {
      final AuthModel authModel = await _authRepository.authModel();
      final UserModel? user = await _userRepository.getUser(authModel.userId!);
      await _userRepository.updateUserHealthModel(
        authModel.userId!,
        HealthModel.copy(user!.healthModel!, activenessDuringDay: activityLevelType),
      );
      emit(SuccessSavingActivityLevel());
    } catch (e, stk) {
      emit(ActivityLevelError(e.toString()));
      Log().e(e.toString(), stk);
    }
  }
}
