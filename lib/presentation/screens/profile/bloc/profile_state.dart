part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => <Object?>[];
}

class ProfileInitial extends ProfileState {
  const ProfileInitial();
}

class LoadingProfileState extends ProfileState {
  const LoadingProfileState();
}

class SignedOutState extends ProfileState {
  const SignedOutState();
}
