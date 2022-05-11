import 'package:fd_fitness_app/domain/models/food/meal/meal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/common_properties.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/progress_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/network_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    Key? key,
    required this.meal,
    this.onPressed,
    this.onAddPressed,
  }) : super(key: key);

  final Meal meal;
  final VoidCallback? onPressed;
  final Function(MealType)? onAddPressed;

  FoodBag get _foodBag => meal.foodBag;

  static const double _itemHeight = 190, _imageWidth = 90, _iconSize = 84;

  @override
  Widget build(BuildContext context) {
    const double cardItemPadding = 29;
    final double cardHeight = _itemHeight + (_foodBag.length > 2 ? (_foodBag.length - 2) * cardItemPadding : cardItemPadding);
    return Container(
      decoration: const BoxDecoration(
        borderRadius: mediumBorderRadius,
        color: AppColors.selectedBackground,
      ),
      margin: const EdgeInsetsDirectional.only(bottom: 20),
      padding: const EdgeInsetsDirectional.only(end: 10),
      height: cardHeight,
      child: InkWell(
        onTap: onPressed,
        borderRadius: mediumBorderRadius,
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Positioned.fill(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _image(),
                  const Indent(horizontal: 38),
                  Expanded(child: _content()),
                ],
              ),
            ),
            Positioned(
              left: _imageWidth - _iconSize / 2 + 8,
              child: SizedBox(
                height: _itemHeight,
                child: Center(
                  child: _addButton(meal.mealType),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _content() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Indent(vertical: 4),
        _title(),
        const Indent(vertical: 11),
        if (_foodBag.isNotEmpty && meal.mealType != MealType.hydration) ..._foodBag.foodList.map(_foodItem).toList()..add(_showMore()),
        const Indent(vertical: 8),
        Flexible(child: _calories()),
        const Indent(vertical: 15),
      ],
    );
  }

  Widget _showMore() {
    const double size = 32;
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey[300]!,
                    blurRadius: 8,
                    spreadRadius: 4,
                  ),
                ],
              ),
            ),
            SizedBox(
              child: SvgPicture.asset(
                'assets/images/arrows_down.svg',
                color: AppColors.primary,
                width: size * 0.5,
                height: size * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _image() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: _roundedImage(
          child: FdNetworkImage(
            imageUrl: meal.imageUrl ?? 'https://media.graphcms.com/wR9buapDRkqPfmjCh2iX',
            fit: BoxFit.fitHeight,
            builder: (_, Widget child) => _roundedImage(child: child),
          ),
        ),
      );

  Widget _addButton(MealType mealType) => GestureDetector(
        onTap: () => onAddPressed?.call(mealType),
        child: Image.asset(
          'assets/images/plus_rounded.png',
          width: _iconSize,
          height: _iconSize,
        ),
      );

  Widget _title() => AnimatedTitleText(
        _mealTitleByType(meal.mealType),
        textStyle: nunitoBold24.copyWith(fontSize: 24),
        overflow: TextOverflow.ellipsis,
        barHeight: 3,
      );

  Widget _roundedImage({required Widget child}) {
    return ClipRRect(
      borderRadius: mediumBorderRadius,
      child: SizedBox(
        width: _imageWidth,
        height: _itemHeight,
        child: child,
      ),
    );
  }

  Widget _foodItem(Food food) {
    final String title = food.label!;
    final String calories = '${food.servings?.nutrients.kcal.toInt()}';
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: poppinsNormal16,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text('${calories}kcal', style: poppinsNormal16),
        ],
      ),
    );
  }

  Widget _calories() {
    final double percent = meal.consumedCaloriesAndWater / meal.maxCalories;
    final String title = meal.mealType == MealType.hydration ? 'Glasses' : 'Calories';
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ProgressBar(
          value: percent == 0 ? 0.05 : percent,
          height: 12,
          backgroundColor: Colors.white,
          colorsThreshold: <double, Color>{
            0: AppColors.primary,
            0.7: AppColors.warningYellow,
            1: Colors.redAccent,
          },
        ),
        const Indent(vertical: 8),
        Row(
          children: <Widget>[
            Text(title, style: nunitoBold16),
            const Spacer(),
            AnimatedTitleText(
              '${meal.consumedCaloriesAndWater}/${meal.maxCalories}',
              textStyle: nunitoBold16,
              barColor: AppColors.primary,
              barHeight: 3,
            ),
          ],
        ),
      ],
    );
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
