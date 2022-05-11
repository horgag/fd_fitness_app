import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/cycle_end/cycle_end_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this._userRepository, this._authRepository) : super(const MainInitial());

  final UserRepository _userRepository;
  final AuthRepository _authRepository;

  void checkEndOfPhaseLaunch() {
    try {
      _authRepository.authModel().then(_handleEndOfPhase);
    } catch (e) {
      Log().e('Failed cheking last launch of the app: $e');
      emit(const MainInitial());
    }
  }

  void _handleEndOfPhase(AuthModel authModel) {
    final String userId = authModel.userId!;
    _userRepository.lastAppLaunchDate(userId).then(
      (CycleEndModel? value) {
        if (value?.isExpired ?? true) {
          _userRepository.saveLastAppLaunch(userId);
          emit(const LastLaunchExpiredState());
        }
      },
    );
  }
}
