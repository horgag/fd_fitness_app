import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/exceptions/auth/auth_exceptions.dart';
import 'package:fd_fitness_app/domain/exceptions/base_fd_exception.dart';
import 'package:fd_fitness_app/domain/exceptions/general_exception.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/presentation/screens/auth/model/auth_data_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

import '../auth_screen.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authData, this._authRepository) : super(AuthInitial());

  final AuthRepository _authRepository;
  final AuthDataModel authData;

  bool _isTermsOfUseSelected = false, _receiveEmailNotifications = false;

  String? get email => authData.email;

  String? get password => authData.password;

  bool get isLogInAuthType => authData.authType == AuthType.signIn;

  bool get isSignUpAuthType => !isLogInAuthType;

  bool get receiveEmailNotifications => _receiveEmailNotifications;

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SelectTermsOfUseEvent) {
      _isTermsOfUseSelected = event.isSelected;
    } else if (event is SelectReceiveEmailNotificationsEvent) {
      _receiveEmailNotifications = event.isSelected;
    } else if (event is EmailAuthEvent) {
      yield* _emailAuth(event.isSignIn, event.email, event.password);
    } else if (event is GoogleAuthEvent) {
      yield* _googleAuth();
    } else if (event is AppleAuthEvent) {
      yield* _appleAuth();
    } else if (event is EmailForgottenPasswordEvent) {
      yield* _forgottenPassword(event.email);
    }
  }

  Stream<AuthState> _googleAuth() async* {
    if (isSignUpAuthType && !_isTermsOfUseSelected) {
      yield NotAgreedToTermsOfUse();
      return;
    }
    yield LoadingAuthState();
    try {
      final AuthModel authModel = await _authRepository.googleAuth();
      Log().d(authModel);
      yield SuccessAuthState();
    } catch (e) {
      Log().e('Failed google auth $e');
      yield _onError(e);
    }
  }

  Stream<AuthState> _forgottenPassword(String email) async* {
    try {
      await _authRepository.resetPassword(email: email);
      yield PasswordResetEmailSentState();
    } catch (e) {
      Log().e(' $e');
      yield _onError(e);
    }
  }

  Stream<AuthState> _appleAuth() async* {
    if (isSignUpAuthType && !_isTermsOfUseSelected) {
      yield NotAgreedToTermsOfUse();
      return;
    }
    yield LoadingAuthState();
    try {
      final AuthModel authModel = await _authRepository.appleAuth();
      Log().d(authModel);
      yield SuccessAuthState();
    } catch (e) {
      Log().e('Failed apple auth $e');
      yield _onError(e);
    }
  }

  Stream<AuthState> _emailAuth(bool isSignIn, String email, String password) async* {
    if (isSignUpAuthType && !_isTermsOfUseSelected) {
      yield NotAgreedToTermsOfUse();
      return;
    }
    yield LoadingAuthState();
    try {
      final AuthModel authModel = await _authRepository.emailAuth(isRegistration: !isSignIn, email: email, password: password);
      Log().d(authModel);
      yield SuccessAuthState();
    } catch (e) {
      Log().e('Failed email auth $e');
      yield _onError(e);
    }
  }

  AuthState _onError(Object error) {
    Log().e('${ErrorAuthState()}');
    if (error is BaseFdException) {
      if (error is GeneralException) {
        return ErrorAuthState();
      } else if (error is EmailAlreadyInUseException) {
        return EmailAlreadyInUseErrorState();
      } else if (error is UserNotFoundException) {
        return UserNotFoundErrorState();
      } else if (error is WeakPasswordException) {
        return WeakPasswordErrorState();
      } else if (error is WrongPasswordException) {
        return WrongPasswordErrorState();
      }
      return ErrorAuthState(error);
    } else {
      return ErrorAuthState(error);
    }
  }
}
