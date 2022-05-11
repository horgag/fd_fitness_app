part of 'update_weight_bloc.dart';

abstract class UpdateWeightState extends Equatable {
  const UpdateWeightState();

  @override
  List<Object> get props => <Object>[];
}

class UpdateWeightInitial extends UpdateWeightState {
  const UpdateWeightInitial();
}

class LoadingState extends UpdateWeightState {
  const LoadingState();
}

class SucceedSavingDataState extends UpdateWeightState {
  const SucceedSavingDataState({this.lostWeight});

  final int? lostWeight;
}

class BaseFailedState extends UpdateWeightState {
  const BaseFailedState();
}

class FailedFetchingAuthModelState extends BaseFailedState {
  const FailedFetchingAuthModelState();
}

class FailedSavingWeightState extends BaseFailedState {
  const FailedSavingWeightState();
}

class FailedSavingDataState extends BaseFailedState {
  const FailedSavingDataState();
}
