import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_issues_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'health_issues_state.dart';

class HealthIssuesCubit extends Cubit<HealthIssuesState> {
  HealthIssuesCubit(this._authRepository, this._userRepository) : super(HealthIssuesLoadingState());

  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  Future<void> getUsersCurrentHealthIssues() async {
    emit(HealthIssuesLoadingState());
    try {
      final AuthModel authModel = await _authRepository.authModel();
      final UserModel? user = await _userRepository.getUser(authModel.userId!);
      emit(HealthIssuesSelected(user?.healthIssues));
    } catch (e, stk) {
      emit(HealthIssuesErrorState(e.toString()));
      Log().e(e.toString(), stk);
    }
  }

  void selectHealthIssue(List<HealthIssuesType> healthIssuesType) {
    emit(HealthIssuesSelected(healthIssuesType));
  }

  Future<void> saveHealthIssues(List<HealthIssuesType> healthIssuesType) async {
    emit(HealthIssuesLoadingState());
    try {
      final AuthModel authModel = await _authRepository.authModel();
      final UserModel? user = await _userRepository.getUser(authModel.userId!);
      await _userRepository.updateUserHealthModel(
        authModel.userId!,
        HealthModel.copy(user!.healthModel!, healthIssues: healthIssuesType),
      );
      emit(SuccessSavingState());
    } catch (e, stk) {
      emit(HealthIssuesErrorState(e.toString()));
      Log().e(e.toString(), stk);
    }
  }
}
