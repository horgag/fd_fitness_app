import 'package:fd_fitness_app/domain/abstract/mixins/media_picker/media_model.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/image_uploads_widget/image_grid/cubit/image_grid_cubit.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/photo_preview/add_image_palceholder.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/photo_preview/image_preview_placeholder.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fullscreen_loader.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../../domain/abstract/mixins/media_picker/media_picker_mixin.dart';

class ImageGridComponent extends StatefulWidget {
  const ImageGridComponent({Key? key, required this.imageManagerMixin, required this.imageGridSubtitle}) : super(key: key);

  final MediaPickerMixin imageManagerMixin;
  final String imageGridSubtitle;

  @override
  _ImageGridComponentState createState() => _ImageGridComponentState();
}

class _ImageGridComponentState extends State<ImageGridComponent> with FlToastMixin<ImageGridComponent> {
  MediaPickerMixin get _imageManager => widget.imageManagerMixin;

  ImageGridCubit get _cubit => context.read<ImageGridCubit>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _cubit.getImageUrls();
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MediaModel>(
      stream: _imageManager.mediaStream,
      builder: (BuildContext context, AsyncSnapshot<MediaModel> snapshot) {
        final MediaModel? mediaModel = snapshot.data;
        return mediaModel == null
            ? const Center(child: FdLoader())
            : FutureBuilder<MediaModel?>(
                future: _imageManager.retrieveLostData(),
                builder: (BuildContext context, AsyncSnapshot<MediaModel?> snapshot) {
                  return FullScreenLoaderWidget(
                    isLoading: false,
                    child: _content(mediaModel, widget.imageGridSubtitle),
                  );
                },
              );
      },
    );
  }

  Widget _content(MediaModel mediaModel, String imageGridSubtitle) {
    return BlocConsumer<ImageGridCubit, GetImageGridState>(
      listener: (BuildContext context, GetImageGridState state) {
        if (state is DeleteImageFailure) {
          showToast('Failure to delete, please try again.');
        } else if (state is GetImageGridFailure) {
          showToast('Error loading images, please try again.');
        }
      },
      builder: (BuildContext context, GetImageGridState state) {
        if (state is GetImageGridLoadSuccess) {
          final bool isImageListEmpty = mediaModel.imageFileList.isEmpty && state.imageUrlsList.isEmpty;
          return _contentBody(isImageListEmpty, mediaModel, state, imageGridSubtitle);
        } else {
          return const Center(
            child: FdLoader(),
          );
        }
      },
    );
  }

  Widget _contentBody(bool isImageListEmpty, MediaModel mediaModel, GetImageGridLoadSuccess state, String imageGridSubtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        isImageListEmpty
            ? const Text(
                'Please upload your first image. This helps you see your progress and helps to keep you motivated when needed.',
                style: poppinsNormal16,
              )
            : const Text(
                'Uploading images helps you see your progress and helps to keep you motivated when needed.',
                style: poppinsNormal16,
              ),
        const Indent(vertical: 30),
        AddImagePlaceholder(
          onPressed: mediaModel.isProccessing
              ? null
              : () {
                  try {
                    // Use single photo selection on iOS due to the bug:
                    // callback doesn't return anything after selecting multiple photo
                    final bool isNotIosPlatform = defaultTargetPlatform != TargetPlatform.iOS;
                    _imageManager.onImageButtonPressed(isMultiImage: isNotIosPlatform);
                  } catch (e) {
                    Log().e('Failed picking images: $e');
                  }
                },
        ),
        _imagePreviewGrid(
          imageUrlsList: state.imageUrlsList,
          imageGridSubtitle: imageGridSubtitle,
          imageFileList: mediaModel.imageFileList,
          retrieveLastDataError: mediaModel.retrieveLastDataError,
          pickImageError: mediaModel.pickImageError,
        ),
      ],
    );
  }

  Widget _imagePreviewGrid({
    required List<String> imageUrlsList,
    required String imageGridSubtitle,
    List<XFile>? imageFileList,
    Object? retrieveLastDataError,
    Object? pickImageError,
  }) {
    _handleErrors(retrieveLastDataError, pickImageError);
    final bool isImageFileListEmpty = imageFileList!.isEmpty && imageUrlsList.isEmpty;
    return isImageFileListEmpty
        ? const Indent()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Indent(vertical: 30),
              Text(imageGridSubtitle, style: nunitoBold20),
              const Indent(vertical: 16),
              GridView.builder(
                itemCount: imageFileList.length + imageUrlsList.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 22.0,
                  crossAxisSpacing: 15.0,
                  mainAxisExtent: ImagePreviewPlaceholder.previewImageHeight,
                ),
                padding: const EdgeInsetsDirectional.only(top: 4),
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: _imageGridBuilderMethod(imageUrlsList, imageFileList, index),
                  );
                },
              ),
            ],
          );
  }

  Widget _imageGridBuilderMethod(
    List<String> imageUrlsList,
    List<XFile> imageFileList,
    int index,
  ) {
    String? path, url;
    if (index >= imageFileList.length) {
      url = imageUrlsList[index - imageFileList.length];
    } else {
      path = imageFileList[index].path;
    }
    return ImagePreviewPlaceholder(
      url: url,
      path: path,
      onRemovePressed: () {
        index >= imageFileList.length ? _cubit.deleteFirebaseStorageImage(url!) : _imageManager.removeImage(path!);
        setState(() {});
      },
    );
  }

  void _handleErrors(Object? retrieveLastDataError, Object? pickImageError) {
    if (retrieveLastDataError != null || pickImageError != null) {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        showToast(
          '${retrieveLastDataError != null ? 'RetrieveLastDataError: $retrieveLastDataError, ' : ''}${pickImageError != null ? 'PickImageError: $pickImageError' : ''}',
        );
      });
    }
  }
}
