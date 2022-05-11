import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class MediaModel extends Equatable {
  const MediaModel({this.isProccessing = false, this.imageFileList = const <XFile>[], this.pickImageError, this.retrieveLastDataError});
  MediaModel.copy(
    MediaModel copy, {
    XFile? file,
    List<XFile>? imageFileList,
    this.pickImageError,
    this.retrieveLastDataError,
    this.isProccessing = false,
  }) : imageFileList = file != null ? <XFile>[file] : (imageFileList ?? copy.imageFileList);

  final List<XFile> imageFileList;
  final bool isProccessing;
  final Object? pickImageError,

      /// related to Android, may occur during unexpected MainActivity rebuils
      retrieveLastDataError;

  @override
  List<Object?> get props => <Object?>[imageFileList, pickImageError, retrieveLastDataError];

  @override
  bool? get stringify => true;
}
