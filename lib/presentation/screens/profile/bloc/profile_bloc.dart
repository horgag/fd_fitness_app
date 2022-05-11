import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/profile_settings_assets/profile_settings_assets_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._authRepository, this._userRepository, this._profileSettingsAssetsRepository) : super(const ProfileInitial());

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final ProfileSettingsAssetsRepository _profileSettingsAssetsRepository;

  String getProgressButtonImageUrl() => _profileSettingsAssetsRepository.getImageUrl();

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is SignOutEvent) {
      yield* _signOut();
    }
  }

  Stream<ProfileState> _signOut() async* {
    yield const LoadingProfileState();
    yield* _authRepository
        .authModel()
        .then(
          (AuthModel authModel) => _authRepository.signOut().then(
                (_) => const SignedOutState(),
              ),
        )
        .asStream();
  }

  // TODO(V): uncomment it when you want to clear user's data, remove this before prod
  // ignore: unused_element
  Stream<ProfileState> _signOutHidden() async* {
    yield const LoadingProfileState();
    yield* _authRepository
        .authModel()
        .then(
          (AuthModel authModel) => _userRepository.removeUser(authModel.userId!).then(
                (_) => _authRepository.signOut().then(
                      (_) => const SignedOutState(),
                    ),
              ),
        )
        .asStream();
  }
}
