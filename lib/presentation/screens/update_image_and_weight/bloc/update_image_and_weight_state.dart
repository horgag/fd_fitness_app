part of 'update_image_and_weight_bloc.dart';

abstract class UpdateImageAndWeightState extends Equatable {
  const UpdateImageAndWeightState();

  @override
  List<Object> get props => <Object>[];
}

class UpdateImageAndWeightInitial extends UpdateImageAndWeightState {
  const UpdateImageAndWeightInitial();
}

class LoadingState extends UpdateImageAndWeightState {
  const LoadingState();
}

class SucceedSavingDataState extends UpdateImageAndWeightState {
  const SucceedSavingDataState({this.lostWeight});

  final int? lostWeight;
}

class BaseFailedState extends UpdateImageAndWeightState {
  const BaseFailedState();
}

class FailedFetchingAuthModelState extends BaseFailedState {
  const FailedFetchingAuthModelState();
}

class FailedSavingWeightState extends BaseFailedState {
  const FailedSavingWeightState();
}

class FailedUploadingImagesState extends BaseFailedState {
  const FailedUploadingImagesState();
}

class FailedSavingDataState extends BaseFailedState {
  const FailedSavingDataState();
}
