import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/fd_video_player.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_number_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meals_container.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/progress_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/meal/meal_item.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/add_your_meal/bloc/add_your_meal_bloc.dart';

class AddYourMealComponent extends StatefulWidget {
  const AddYourMealComponent({Key? key}) : super(key: key);

  @override
  _AddYourMealComponentState createState() => _AddYourMealComponentState();
}

class _AddYourMealComponentState extends State<AddYourMealComponent> {
  AddYourMealBloc get _bloc => context.read<AddYourMealBloc>();
  final FdVideoController? fdVideoController = FdVideoController();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bloc.add(const LoadYourMealsEvent());
  }

  @override
  Widget build(BuildContext context) {
    final AddYourMealState state = context.watch<AddYourMealBloc>().state;
    MealsContainer? mealsContainer;
    if (state is ResultMealState) {
      mealsContainer = state.mealsContainer;
    } else if (state is ErrorLoadingUserOccurredState) {
      mealsContainer = state.mealsContainer;
    }
    final bool isError = state is ErrorLoadingUserOccurredState;
    final bool isLoading = state is LoadingState || mealsContainer == null;
    final bool enableScroll = !(isLoading || isError);

    return BaseFdWidget(
      title: 'Add your meal',
      scrollPadding: EdgeInsetsDirectional.zero,
      enabledScroll: enableScroll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _subtitle(),
          const Indent(vertical: 15),
          _slippedUpMessage(),
          isLoading || isError
              ? const Expanded(child: Center(child: FdLoader()))
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Indent(vertical: 30),
                    _consumedCalories(mealsContainer.consumedCalories, mealsContainer.bmr, mealsContainer.maxCaloriesCustom),
                    const Indent(vertical: 40),
                    _yourMeals(mealsContainer.meals),
                  ],
                ),
          Indent(vertical: UiHelper.getBottomNavBarHeight(context)),
        ],
      ),
    );
  }

  Padding _subtitle() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 60),
      child: Text(
        'Please add your meals, snacks and drinks for the day.',
        style: poppinsNormal16.copyWith(color: Colors.black),
      ),
    );
  }

  Widget _slippedUpMessage() {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: <Widget>[
        _slippedUpVideo(),
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 60),
          child: GestureDetector(
            onTap: () => fdVideoController?.enterFullScreen(),
            child: Text(
              'Did you F@!k Up? Tap here!',
              style: poppinsNormal16.copyWith(color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }

  Widget _consumedCalories(int value, int max, int? custom) {
    int properMax = max <= 0 ? 1 : max;
    final int properValue = value <= 0 ? 0 : value;
    final double percent = properValue / properMax;

    if (properValue > properMax) fdVideoController?.enterFullScreen();

    if (custom != null) {
      properMax = custom;
    } else if (max <= 0) {
      properMax = 1;
    } else {
      properMax = max;
    }

    return Column(
      children: <Widget>[
        Text(
          'Todays calories',
          style: nunitoBold24.copyWith(fontSize: 24),
        ),
        const Indent(vertical: 8),
        ProgressBar(
          value: percent == 0 ? 0.05 : percent,
          colorsThreshold: <double, Color>{
            0: AppColors.primary,
            0.7: AppColors.warningYellow,
            1: Colors.redAccent,
          },
        ),
        const Indent(vertical: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedTitleText(
              '$properValue/$properMax',
              textStyle: nunitoBold24.copyWith(fontSize: 24),
              barColor: AppColors.primary,
            ),
            GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return _updateCaloriesModal(context);
                  },
                );
              },
              child: Image.asset('assets/images/plusicon.png', width: 20, height: 20),
            ),
          ],
        ),
      ],
    );
  }

  Widget _yourMeals(List<Meal> meals) {
    return Column(
      children: meals
          .map<Widget>(
            (Meal meal) => MealItem(
              meal: meal,
              onAddPressed: (MealType mealType) async {
                final dynamic wasUpdated = await _provideFoodNavigation(context, mealType, meal.foodBag);
                _updateMealsContainer(wasUpdated);
              },
              onPressed: () async {
                if (meal.foodBag.isNotEmpty) {
                  final dynamic wasUpdated = await _provideFoodNavigation(context, meal.mealType, meal.foodBag, false);
                  _updateMealsContainer(wasUpdated);
                }
              },
            ),
          )
          .toList(),
    );
  }

  Widget _slippedUpVideo() {
    final String placeholderUrl = 'https://media.graphcms.com/eIeFM9ZBQiO7H4UQ7jny';

    return Container(
      height: 0,
      width: 0,
      child: FdVideoPlayer(
        url: placeholderUrl,
        showExitButton: false,
        fdVideoController: fdVideoController,
      ),
    );
  }

  Container _updateCaloriesModal(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Indent(vertical: 30),
          const AnimatedTitleText('Please enter your calorie limit for today'),
          const Indent(vertical: 30),
          FdNumberTextField(
            controller: _controller,
            text: ' ',
            alwaysVisibleSuffixText: 'kCal',
            suffixText: 'kCal',
            width: 200,
          ),
          const Indent(vertical: 60),
          FdEleveatedButton(
            title: 'Save',
            margin: const EdgeInsets.all(10),
            onPressed: () {
              _updateMaxCalories(_controller.text);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _updateMaxCalories(String calorieInput) {
    final int maxCalories = int.parse(calorieInput);
    _bloc.add(UpdateCaloriesEvent(maxCalories));
  }

  void _updateMealsContainer(dynamic shouldUpdated) {
    if (shouldUpdated is bool && shouldUpdated) _bloc.add(const LoadYourMealsEvent());
  }

  Future<dynamic> _provideFoodNavigation(BuildContext context, MealType mealType, FoodBag foodBag, [bool isAddPressed = true]) {
    if (mealType == MealType.hydration) {
      return NavigatorUtils.goToAddHydrationScreen(context, foodBag.foodList.firstOrNull);
    } else {
      if (isAddPressed) {
        return NavigatorUtils.goToFoodSearchListScreen(context, mealType);
      } else {
        return NavigatorUtils.goToMyFoodListScreen(context, foodBag);
      }
    }
  }
}
