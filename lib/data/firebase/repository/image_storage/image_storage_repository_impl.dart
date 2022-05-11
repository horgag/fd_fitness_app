import 'dart:io';

import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:fd_fitness_app/domain/exceptions/image_storage/image_storage_codes.dart';
import 'package:fd_fitness_app/domain/exceptions/image_storage/permission_denied_exception.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImageStorageRepositoryImpl implements ImageStorageRepository {
  final FirebaseStorage storage = FirebaseStorage.instance;

  static const String _progressImages = 'progress_images', _usersKey = 'users';

  @override
  Future<List<String>> fetchImageUrls(String userId) async {
    try {
      final ListResult result = await _imagesReference(userId).listAll();
      final List<String> downloadablePath = await Future.wait<String>(
        result.items.map<Future<String>>(
          (Reference ref) => ref.getDownloadURL(),
        ),
      );
      return downloadablePath;
    } catch (e) {
      return <String>[];
    }
  }

  @override
  Future<bool> uploadImage(String userId, String imagePath, [String? fileName]) async {
    final Reference ref = _imagesReference(userId).child(fileName ?? imagePath.split('/').last);
    final File file = File(imagePath);
    try {
      final UploadTask task = ref.putFile(file);
      final TaskSnapshot snapshot = await task;
      return snapshot.state == TaskState.success;
    } on FirebaseException catch (e) {
      if (e.code == ImageStorageErrorCodes.permissionDenied) {
        Log().e('User does not have permission to upload to this reference.');
        throw const PermissionDeniedException();
      }
    }
    return false;
  }

  Reference _imagesReference(String userId) => FirebaseStorage.instance.ref(_usersKey).child(userId).child(_progressImages);

  @override
  Future<void> deleteImage(String url) {
    return storage.refFromURL(url).delete();
  }
}
