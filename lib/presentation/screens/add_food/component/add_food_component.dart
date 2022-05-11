import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/domain/models/food/nutrients.dart';
import 'package:fd_fitness_app/domain/models/food/servings_size.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/base_fd_circular_progress_indicator.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/slider/fd_slider.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/add_food/component/widgets/nutrition_circle.dart';
import 'package:fd_fitness_app/presentation/screens/add_food/cubit/add_food_cubit.dart';

class AddFoodComponent extends StatefulWidget {
  const AddFoodComponent({Key? key}) : super(key: key);

  @override
  _AddFoodComponentState createState() => _AddFoodComponentState();
}

class _AddFoodComponentState extends State<AddFoodComponent> with FlToastMixin<AddFoodComponent> {
  AddFoodCubit get _cubit => context.read<AddFoodCubit>();
  static const double _minNumberOfServings = 1, _maxNumberOfServings = 5;

  @override
  void initState() {
    super.initState();
    _cubit.loadInitialServings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseFdWidget(
        title: _cubit.foodLabel,
        appBar: FdAppBar(),
        child: BlocConsumer<AddFoodCubit, AddFoodState>(
          listener: (BuildContext context, AddFoodState state) {
            if (state is SucceedAddingFood) {
              showToast('${_cubit.foodLabel} was added');
              NavigatorUtils.goBack(context, true);
            }
          },
          builder: _content,
        ),
      ),
    );
  }

  Widget _content(BuildContext context, AddFoodState state) {
    return !state.isValid
        ? const BaseFdCircularProgressIndicator()
        : Column(
            children: <Widget>[
              const Text(
                'Please select the serving size and number of servings below with the sliders',
                style: poppinsNormal16,
              ),
              const Indent(vertical: 30),
              _servingSize(state.servingSizeList!, state.servingSizeValue!, state.servingSizeIndex!),
              const Indent(vertical: 30),
              _numberOfServings(state.numberOfServingsValue!, state.numberOfServingsIndex!),
              const Indent(vertical: 30),
              _nutritions(state.nutrients!, state.numberOfServingsIndex!),
              const Indent(vertical: 30),
              _totalCalories(state.nutrients!.kcal),
              const Indent(vertical: 30),
              FdEleveatedButton(
                title: 'Add Food',
                onPressed: _cubit.addFood,
              ),
              Indent(vertical: UiHelper.getBottomPadding(context)),
            ],
          );
  }

  Widget _servingSize(List<ServingSize> servingSizeList, double sliderValue, int index) {
    final ServingSize selectedServingSize = servingSizeList[index];
    final String? weight = selectedServingSize.weight.toStringAsFixed(2);
    final String title = _servingSizeTitle(selectedServingSize.label);
    final double maximum = servingSizeList.length.toDouble() - 1;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Serving size',
          style: nunitoBold24,
        ),
        FdSlider(
          value: sliderValue,
          max: maximum,
          onChanged: _cubit.updateServingsSize,
        ),
        const Indent(vertical: 10),
        AnimatedTitleText(
          '$title (${weight}g)',
          textStyle: nunitoBold24,
          barColor: AppColors.borderPrimary,
        ),
      ],
    );
  }

  Widget _numberOfServings(double numberOfServingsValue, int numberOfServings) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Number of servings',
          style: nunitoBold24,
        ),
        FdSlider(
          value: numberOfServingsValue,
          min: _minNumberOfServings,
          max: _maxNumberOfServings,
          onChanged: _cubit.updateNumberOfServings,
        ),
        const Indent(vertical: 10),
        AnimatedTitleText(
          '$numberOfServings',
          textStyle: nunitoBold24,
          barColor: AppColors.borderPrimary,
        ),
      ],
    );
  }

  Column _nutritions(Nutrients nutrients, int number) {
    final NutritionalLevel nutritionalLevel = _nutritionalLevelByNumberOfServings(number);
    return Column(
      children: <Widget>[
        const Text(
          'Nutritional value',
          style: nunitoBold24,
        ),
        const Indent(vertical: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NutritionCircle(
              weight: nutrients.carbs,
              nutritionType: NutritionType.carbs,
              nutritionalLevel: nutritionalLevel,
            ),
            NutritionCircle(
              weight: nutrients.fat,
              nutritionType: NutritionType.fat,
              nutritionalLevel: nutritionalLevel,
            ),
            NutritionCircle(
              weight: nutrients.protein,
              nutritionType: NutritionType.protein,
              nutritionalLevel: nutritionalLevel,
            ),
          ],
        ),
      ],
    );
  }

  Widget _totalCalories(double calories) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Total Calories',
          style: nunitoBold24,
        ),
        const Indent(vertical: 10),
        AnimatedTitleText(
          '${calories.toInt()}kcal',
          textStyle: nunitoBold24,
          barColor: AppColors.borderPrimary,
        ),
      ],
    );
  }

  String _servingSizeTitle(String? label) {
    if (label?.isEmpty ?? true) return '';
    final ServingSizeType? type = label.toServingSizeType();
    if (type == null) {
      final String capitalLetter = label!.substring(0, 1).toUpperCase();
      final String text = label.substring(1);
      final String title = '$capitalLetter$text';
      return title;
    } else {
      switch (type) {
        case ServingSizeType.small:
          return 'Small';
        case ServingSizeType.medium:
          return 'Medium';
        case ServingSizeType.large:
        default:
          return 'Large';
      }
    }
  }

  NutritionalLevel _nutritionalLevelByNumberOfServings(int numberOfServings) {
    if (numberOfServings < 3) {
      return NutritionalLevel.good;
    } else if (numberOfServings <= 4) {
      return NutritionalLevel.high;
    } else {
      return NutritionalLevel.veryHigh;
    }
  }
}
