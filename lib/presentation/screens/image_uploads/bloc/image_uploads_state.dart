part of 'image_uploads_bloc.dart';

abstract class ImageUploadsState extends Equatable {
  const ImageUploadsState();

  @override
  List<Object> get props => <Object>[];
}

class ImageUploadsInitial extends ImageUploadsState {
  const ImageUploadsInitial();
}

class LoadingState extends ImageUploadsState {
  const LoadingState();
}

class SucceedSavingDataState extends ImageUploadsState {
  const SucceedSavingDataState();
}

class BaseFailedState extends ImageUploadsState {
  const BaseFailedState();
}

class FailedFetchingAuthModelState extends BaseFailedState {
  const FailedFetchingAuthModelState();
}

class FailedUploadingImagesState extends BaseFailedState {
  const FailedUploadingImagesState();
}

class FailedSavingDataState extends BaseFailedState {
  const FailedSavingDataState();
}
