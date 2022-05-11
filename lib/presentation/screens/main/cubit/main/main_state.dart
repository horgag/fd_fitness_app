part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();

  @override
  List<Object> get props => <Object>[];
}

class MainInitial extends MainState {
  const MainInitial();
}

class LastLaunchExpiredState extends MainState {
  const LastLaunchExpiredState();
}
