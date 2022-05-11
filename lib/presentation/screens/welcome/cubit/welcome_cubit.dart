import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:fd_fitness_app/util/shared_preferences/shared_prefs.dart';

part 'welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  WelcomeCubit(this._authRepository, this._onboardingRepository) : super(WelcomeInitial());

  final AuthRepository _authRepository;
  final UserRepository _onboardingRepository;

  void checkUser() {
    emit(LoadingState());
    _authRepository.authModel().then((AuthModel user) {
      Log().d(user);
      if (user.isUserLogged) {
        Log().i('User is logged in');
        _onboardingRepository.getUser(user.userId!).then((UserModel? userModel) {
          if (userModel?.isOnboardingCompleted ?? false) {
            emit(UserCompletedOnboardingLoggedInState());
          } else {
            emit(UserAlreadyLoggedInState());
          }
        });
      } else {
        Log().i('User is NOT logged');
        emit(NewUserState());
      }
    });
  }
}
