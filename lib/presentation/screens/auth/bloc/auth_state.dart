part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => <Object?>[];
}

class AuthInitial extends AuthState {}

class LoadingAuthState extends AuthState {}

class SuccessAuthState extends AuthState {}

class BaseSignInState extends AuthState {}

class BaseSignUpState extends AuthState {}

class PasswordResetEmailSentState extends AuthState {}

class ErrorSignInState extends BaseSignInState {}

class ErrorSignUnState extends BaseSignUpState {}

class ErrorAuthState extends BaseSignUpState {
  ErrorAuthState([this.error]);
  final Object? error;

  @override
  List<Object?> get props => <Object?>[error];

  @override
  bool? get stringify => true;
}

class NotAgreedToTermsOfUse extends ErrorAuthState {}

class GeneralErrorState extends ErrorAuthState {}

class EmailAlreadyInUseErrorState extends ErrorAuthState {}

class UserNotFoundErrorState extends ErrorAuthState {}

class WeakPasswordErrorState extends ErrorAuthState {}

class WrongPasswordErrorState extends ErrorAuthState {}


