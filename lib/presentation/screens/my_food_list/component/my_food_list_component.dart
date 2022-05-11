import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/dialogs/fd_alert_dialog.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/meal/food_item_list.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/my_food_list/cubit/my_food_list_cubit.dart';

class MyFoodListComponent extends StatefulWidget {
  const MyFoodListComponent({Key? key}) : super(key: key);

  @override
  _MyFoodListComponentState createState() => _MyFoodListComponentState();
}

class _MyFoodListComponentState extends State<MyFoodListComponent> {
  MyFoodListCubit get _cubit => context.read<MyFoodListCubit>();

  @override
  Widget build(BuildContext context) {
    final BaseMyFoodListState state = context.watch<MyFoodListCubit>().state;
    final List<Food> foodList = state.foodList;
    final bool isNotEmpty = foodList.isNotEmpty;
    return Scaffold(
      body: BaseFdWidget(
        title: 'Your food list',
        appBar: FdAppBar(state.wasUpdated),
        enabledScroll: isNotEmpty,
        child: Column(
          children: <Widget>[
            _subtitle(),
            isNotEmpty
                ? _foodList(foodList, context)
                : Expanded(
                    child: _foodList(foodList, context),
                  ),
          ],
        ),
      ),
    );
  }

  FoodItemList _foodList(List<Food> foodList, BuildContext context) {
    return FoodItemList(
      foodList: foodList,
      hasTitle: false,
      isDismissable: true,
      onFoodTap: (Food food) => _onFoodItemPressed(context, food),
      onDismissPressed: (Food food) => _onFoodItemPressed(context, food),
    );
  }

  Padding _subtitle() {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 60, bottom: 24),
      child: Text(
        'Here you can manage your food list within ${_mealTitleByType(_cubit.mealType)}',
        style: poppinsNormal16,
      ),
    );
  }

  Future<bool> _onFoodItemPressed(BuildContext context, Food food) async {
    final bool? shouldRemove = await showDialog<bool?>(
      context: context,
      builder: (BuildContext context) => FdAlertDialog(
        title: 'Are you sure you would like to remove "${food.label}"?',
      ),
    );
    if (shouldRemove != null && shouldRemove) {
      _cubit.removeFood(food);
      return true;
    }
    return false;
  }

  String _mealTitleByType(MealType type) {
    switch (type) {
      case MealType.breakfast:
        return 'Breakfast';
      case MealType.lunch:
        return 'Lunch';
      case MealType.dinner:
        return 'Dinner';
      case MealType.snacks:
        return 'Snacks';
      case MealType.hydration:
      default:
        return 'Hydration';
    }
  }
}
