part of 'add_hydration_cubit.dart';

abstract class AddHydrationState extends Equatable {
  const AddHydrationState(this.glasses);

  final int glasses;

  @override
  List<Object?> get props => <Object?>[glasses];
}

class UpdateGlassesState extends AddHydrationState {
  const UpdateGlassesState(int glasses) : super(glasses);
}

class SuccessfullySavedState extends AddHydrationState {
  const SuccessfullySavedState(int glasses) : super(glasses);
}

class BaseErrorState extends AddHydrationState {
  const BaseErrorState(int glasses, this.error) : super(glasses);

  final Object? error;

  @override
  List<Object?> get props => super.props..add(error);
}

class GeneralErrorState extends BaseErrorState {
  const GeneralErrorState(int glasses, [Object? error]) : super(glasses, error);
}

class ErrorAuthState extends BaseErrorState {
  const ErrorAuthState(int glasses, [Object? error]) : super(glasses, error);
}

class LoadingState extends AddHydrationState {
  const LoadingState(int glasses) : super(glasses);
}
