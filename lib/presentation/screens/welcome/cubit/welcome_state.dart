part of 'welcome_cubit.dart';

abstract class WelcomeState extends Equatable {
  const WelcomeState();

  @override
  List<Object> get props => <Object>[];
}

class WelcomeInitial extends WelcomeState {}

class LoadingState extends WelcomeState {}

class UserAlreadyLoggedInState extends WelcomeState {}

class UserCompletedOnboardingLoggedInState extends WelcomeState {}

class NewUserState extends WelcomeState {}
