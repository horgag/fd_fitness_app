import 'package:fd_fitness_app/domain/models/food/servings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fullscreen_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/add_hydration/cubit/add_hydration_cubit.dart';

class AddHydrationComponent extends StatefulWidget {
  const AddHydrationComponent({Key? key}) : super(key: key);

  @override
  _AddHydrationComponentState createState() => _AddHydrationComponentState();
}

class _AddHydrationComponentState extends State<AddHydrationComponent> with FlToastMixin<AddHydrationComponent> {
  static const double _iconSize = 84, _iconCupSize = 54;

  AddHydrationCubit get _cubit => context.read<AddHydrationCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddHydrationCubit, AddHydrationState>(
      listener: (BuildContext context, AddHydrationState state) {
        if (state is BaseErrorState) {
          _handleError(state);
        } else if (state is SuccessfullySavedState) {
          NavigatorUtils.goBack(context, true);
        }
      },
      builder: (BuildContext context, AddHydrationState state) {
        return FullScreenLoaderWidget(
          isLoading: state is LoadingState,
          child: Scaffold(
            body: BaseFdWidget(
              title: 'Add Hydration',
              appBar: FdAppBar(),
              enabledScroll: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: _content(state.glasses)),
                  FdEleveatedButton(
                    title: 'Save',
                    onPressed: () => _cubit.saveHydration(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _content(int glasses) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _hint(),
        const Indent(vertical: 34),
        _addHydration(glasses),
      ],
    );
  }

  Widget _hint() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _glassIcon(),
        Text(
          '= ${GLASS_OF_WATER_ML.toStringAsFixed(0)}ml',
          style: nunitoBold40,
        ),
      ],
    );
  }

  Widget _addHydration(int glasses) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _controlButton(
          'assets/images/minus_rounded.png',
          () {
            if (glasses > 0) _cubit.updateHydration(--glasses);
          },
        ),
        Row(
          children: <Widget>[
            Text(
              '$glasses',
              style: nunitoBold40,
            ),
            const Indent(horizontal: 12),
            _glassIcon(_iconCupSize * 0.6),
          ],
        ),
        _controlButton(
          'assets/images/plus_rounded.png',
          () {
            if (glasses < 10) _cubit.updateHydration(++glasses);
          },
        ),
      ],
    );
  }

  Widget _controlButton(String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        width: _iconSize,
        height: _iconSize,
      ),
    );
  }

  Widget _glassIcon([double size = _iconCupSize]) {
    return Image.asset(
      'assets/images/water_glass.png',
      width: size,
      height: size,
      color: Colors.lightBlueAccent,
    );
  }

  void _handleError(BaseErrorState state) {
    if (state is GeneralErrorState) {
      showToast('Error occurred: ${state.error}');
    } else if (state is ErrorAuthState) {
      showToast('Failed to get auth model');
    }
  }
}
