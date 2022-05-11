import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/image_uploads_widget/image_grid/get_image_grid.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fullscreen_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/image_uploads/bloc/image_uploads_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageUploadsComponent extends StatefulWidget {
  const ImageUploadsComponent({Key? key}) : super(key: key);

  @override
  _ImageUploadsComponentState createState() => _ImageUploadsComponentState();
}

class _ImageUploadsComponentState extends State<ImageUploadsComponent> with FlToastMixin<ImageUploadsComponent> {
  final FocusNode _focusNode = FocusNode();

  ImageUploadsBloc get _bloc => context.read<ImageUploadsBloc>();

  @override
  Widget build(BuildContext context) {
    final ImageUploadsState state = context.watch<ImageUploadsBloc>().state;
    final bool isLoading = state is LoadingState;
    return Scaffold(
      body: BlocConsumer<ImageUploadsBloc, ImageUploadsState>(
        listener: (BuildContext context, ImageUploadsState state) {
          if (state is SucceedSavingDataState) {
            NavigatorUtils.goBack(context);
          } else if (state is FailedFetchingAuthModelState) {
            showToast('Failed fetching user');
          } else if (state is FailedUploadingImagesState) {
            showToast('Failed saving images');
          } else if (state is FailedSavingDataState) {
            showToast('Failed saving data');
          }
        },
        builder: (BuildContext context, ImageUploadsState state) => FullScreenLoaderWidget(
          isLoading: isLoading,
          child: GestureDetector(
            onTap: () => _focusNode.hasFocus ? _focusNode.unfocus() : null,
            child: BaseFdWidget(
              title: 'Image uploads',
              appBar: FdAppBar(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ImageGrid(imageManagerMixin: _bloc, imageGridSubtitle: 'Images Uploaded'),
                  const Indent(vertical: 60),
                  FdEleveatedButton(
                    title: 'Next',
                    onPressed: () {
                      _bloc.add(const SaveDataEvent());
                    },
                  ),
                  Indent(vertical: UiHelper.getBottomNavBarHeight(context)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
