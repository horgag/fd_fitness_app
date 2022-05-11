import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/add_your_weight/add_your_weight_widget.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/image_uploads_widget/image_grid/get_image_grid.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fullscreen_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/update_image_and_weight/bloc/update_image_and_weight_bloc.dart';
import 'package:fd_fitness_app/presentation/screens/update_image_and_weight/update_image_and_weight_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateImageAndWeightComponent extends StatefulWidget {
  const UpdateImageAndWeightComponent({Key? key}) : super(key: key);

  @override
  _UpdateImageAndWeightComponentState createState() => _UpdateImageAndWeightComponentState();
}

class _UpdateImageAndWeightComponentState extends State<UpdateImageAndWeightComponent> with FlToastMixin<UpdateImageAndWeightComponent> {
  final FocusNode _focusNode = FocusNode();

  UpdateImageAndWeightBloc get _bloc => context.read<UpdateImageAndWeightBloc>();

  @override
  Widget build(BuildContext context) {
    final UpdateImageAndWeightState state = context.watch<UpdateImageAndWeightBloc>().state;
    final bool isLoading = state is LoadingState;
    return Scaffold(
      body: BlocConsumer<UpdateImageAndWeightBloc, UpdateImageAndWeightState>(
        listener: (BuildContext context, UpdateImageAndWeightState state) {
          if (state is SucceedSavingDataState) {
            if (_bloc.type == UpdateImageAndWeightType.endOfPhase) {
              NavigatorUtils.replaceToEndOfPhaseScreen(context, state.lostWeight!);
            } else {
              NavigatorUtils.goBack(context);
            }
          } else if (state is FailedFetchingAuthModelState) {
            showToast('Failed fetching user');
          } else if (state is FailedUploadingImagesState) {
            showToast('Failed saving images');
          } else if (state is FailedSavingDataState) {
            showToast('Failed saving data');
          }
        },
        builder: (BuildContext context, UpdateImageAndWeightState state) => FullScreenLoaderWidget(
          isLoading: isLoading,
          child: GestureDetector(
            onTap: () => _focusNode.hasFocus ? _focusNode.unfocus() : null,
            child: BaseFdWidget(
              title: 'Update your image and weight',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ImageGrid(imageManagerMixin: _bloc, imageGridSubtitle: 'Image preview'),
                  const Indent(vertical: 30),
                  const Text('Add your weight', style: nunitoBold20),
                  const Indent(vertical: 30),
                  AddYourWeightWidget(
                    onSaved: (String weightString, bool inLbs) {
                      final int? weight;
                      if (inLbs) {
                        weight = (int.tryParse(weightString)! * 0.45).toInt();
                      } else {
                        weight = int.tryParse(weightString);
                      }
                      if (weightString.isNotEmpty && weight != null) {
                        _bloc.add(SaveDataEvent(weight));
                      } else {
                        showToast('Please enter your weight');
                      }
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
