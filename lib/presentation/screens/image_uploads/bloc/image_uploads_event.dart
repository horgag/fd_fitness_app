
part of 'image_uploads_bloc.dart';

abstract class ImageUploadsEvent extends Equatable {
  const ImageUploadsEvent();

  @override
  List<Object> get props => <Object>[];
}

class SaveDataEvent extends ImageUploadsEvent {
  const SaveDataEvent();
}
