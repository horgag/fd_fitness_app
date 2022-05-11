part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => <Object>[];
}

class SelectTermsOfUseEvent extends AuthEvent {
  const SelectTermsOfUseEvent(this.isSelected);
  final bool isSelected;
}

class SelectReceiveEmailNotificationsEvent extends AuthEvent {
  const SelectReceiveEmailNotificationsEvent(this.isSelected);
  final bool isSelected;
}

class EmailAuthEvent extends AuthEvent {
  const EmailAuthEvent({required this.isSignIn, required this.email, required this.password});
  final String email, password;
  final bool isSignIn;
}

class EmailForgottenPasswordEvent extends AuthEvent {
  const EmailForgottenPasswordEvent({required this.email});
  final String email;
}

class GoogleAuthEvent extends AuthEvent {
  const GoogleAuthEvent();
}

class AppleAuthEvent extends AuthEvent {
  const AppleAuthEvent();
}


