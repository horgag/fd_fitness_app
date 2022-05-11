import 'dart:async';

import 'package:fd_fitness_app/domain/abstract/mixins/media_picker/picker_error_codes.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rxdart/subjects.dart';

import 'media_model.dart';

typedef OnPickImageCallback = void Function(double? maxWidth, double? maxHeight, int? quality);

mixin MediaPickerMixin {
  final ImagePicker _picker = ImagePicker();
  MediaModel _mediaModel = const MediaModel();
  late final BehaviorSubject<MediaModel> _mediaBehaviorSubject = BehaviorSubject<MediaModel>.seeded(_mediaModel);
  late final Stream<MediaModel> mediaStream = _mediaBehaviorSubject.stream;

  MediaModel get mediaModel => _mediaModel;

  List<XFile> get pickedFiles => _mediaModel.imageFileList;

  /// Handling MainActivity destruction on Android https://pub.dev/packages/image_picker#handling-mainactivity-destruction-on-android
  Future<MediaModel?> retrieveLostData() async {
    // ignore: prefer_const_declarations
    final bool isAndroid = !kIsWeb && defaultTargetPlatform == TargetPlatform.android;
    if (!isAndroid) return null;
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) return null;
    if (response.file != null) {
      _mediaModel = MediaModel.copy(_mediaModel, file: response.file);
    } else {
      _mediaModel = MediaModel.copy(_mediaModel, retrieveLastDataError: response.exception!.code);
    }
    _addMediaEvent();
  }

  Future<MediaModel> onImageButtonPressed({
    ImageSource source = ImageSource.gallery,
    int? quality,
    double? maxWidth,
    double? maxHeight,
    bool append = true,
    bool isMultiImage = false,
  }) async {
    if (isMultiImage) {
      await _pickMultipleImagesAndUpdate(
        append: append,
        quality: quality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );
    } else {
      await _pickSingleImageAndUpdate(
        source,
        append: append,
        quality: quality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );
    }
    _addMediaEvent();
    return _mediaModel;
  }

  Future<void> _pickMultipleImagesAndUpdate({
    int? quality,
    double? maxWidth,
    double? maxHeight,
    bool append = true,
  }) async {
    try {
      final List<XFile>? pickedFileList = await _picker.pickMultiImage(
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        imageQuality: quality,
      );
      if (pickedFileList?.isNotEmpty ?? false)
        _updateModelOnFilePicked(append, files: pickedFileList!);
      else
        Log().e('Failed picking files: $pickedFileList');
    } catch (e) {
      _handleErrorOnPickingImage(e, 'Failed to getMultiImage: $e');
    }
  }

  Future<void> _pickSingleImageAndUpdate(
    ImageSource source, {
    int? quality,
    double? maxWidth,
    double? maxHeight,
    bool append = true,
  }) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        imageQuality: quality,
      );
      if (pickedFile != null)
        _updateModelOnFilePicked(append, file: pickedFile);
      else
        Log().e('Failed picking file: $pickedFile');
    } catch (e) {
      _handleErrorOnPickingImage(e, 'Failed to getImage: $e');
    }
  }

  void removeImage(String path) {
    if (_mediaModel.imageFileList.isNotEmpty) {
      _mediaModel = MediaModel.copy(
        _mediaModel,
        imageFileList: List<XFile>.from(
          _mediaModel.imageFileList.where((XFile file) => file.path != path).toList(),
        ),
      );
      _addMediaEvent();
    }
  }

  void _addMediaEvent() {
    if (!_mediaBehaviorSubject.isClosed) {
      _mediaBehaviorSubject.add(_mediaModel);
    }
  }

  void _updateModelOnFilePicked(bool append, {List<XFile>? files, XFile? file}) {
    if (append) {
      final Set<XFile> uniquePickedFiles = Set<XFile>.from(_mediaModel.imageFileList);
      if (files != null) {
        uniquePickedFiles.addAll(files);
      } else if (file != null) {
        uniquePickedFiles.add(file);
      }
      _mediaModel = MediaModel.copy(_mediaModel, imageFileList: uniquePickedFiles.toList());
    } else {
      if (files != null) {
        _mediaModel = MediaModel.copy(_mediaModel, imageFileList: files);
      } else if (file != null) {
        _mediaModel = MediaModel.copy(_mediaModel, file: file);
      }
    }
  }

  void _handleErrorOnPickingImage(Object e, String errorLogMsg) {
    Log().e('$errorLogMsg');
    Object error = e;
    if (e is PlatformException) {
      if (e.code == PickerErrorCodes.multipleRequest) {
        error = 'Failed picking image';
      }
    }
    _mediaModel = MediaModel.copy(_mediaModel, pickImageError: error);
  }
}
