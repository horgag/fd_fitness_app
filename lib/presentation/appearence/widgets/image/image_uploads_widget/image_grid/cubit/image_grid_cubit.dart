import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'image_grid_state.dart';

class ImageGridCubit extends Cubit<GetImageGridState> {
  ImageGridCubit(this._imageStorageRepository, this._authRepository)
      : _imageUrls = <String>[],
        super(GetImageGridLoadInProgress());
  final ImageStorageRepository _imageStorageRepository;
  final AuthRepository _authRepository;

  final List<String> _imageUrls;

  Future<void> getImageUrls() async {
    emit(GetImageGridLoadInProgress());
    _authRepository.authModel().then((AuthModel user) async {
      try {
        final List<String> result = await _imageStorageRepository.fetchImageUrls(user.userId!);
        _imageUrls
          ..clear()
          ..addAll(result);
        emit(GetImageGridLoadSuccess(imageUrlsList: _imageUrls));
      } catch (e) {
        emit(GetImageGridFailure(e));
        Log().e(e.toString());
      }
    });
  }

  Future<void> deleteFirebaseStorageImage(String url) async {
    emit(GetImageGridLoadInProgress());
    try {
      await _imageStorageRepository.deleteImage(url);
      _imageUrls.remove(url);
      emit(GetImageGridLoadSuccess(imageUrlsList: _imageUrls));
    } catch (e) {
      emit(DeleteImageFailure(_imageUrls, e));
      Log().e(e.toString());
    }
  }
}
