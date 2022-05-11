import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:flutter/material.dart';

enum NutritionType { carbs, protein, fat }
enum NutritionalLevel { good, high, veryHigh }

class NutritionCircle extends StatelessWidget {
  const NutritionCircle({
    Key? key,
    this.weight = 0.0,
    this.nutritionType,
    this.nutritionalLevel = NutritionalLevel.good,
  }) : super(key: key);

  final double weight;
  final NutritionType? nutritionType;
  final NutritionalLevel nutritionalLevel;

  static const double _size = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size,
      width: _size,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: _getColorByNutritionalLevel(nutritionalLevel),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              margin: const EdgeInsetsDirectional.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${weight.toStringAsFixed(1)}g',
                  style: nunitoBold20,
                ),
                Text(
                  _nutritionTypeText(nutritionType),
                  style: poppinsNormal16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _getColorByNutritionalLevel(NutritionalLevel nutritionalLevel) {
    switch (nutritionalLevel) {
      case NutritionalLevel.veryHigh:
        return Colors.redAccent;
      case NutritionalLevel.high:
        return AppColors.warningYellow;
      case NutritionalLevel.good:
      default:
        return AppColors.borderPrimary;
    }
  }

  String _nutritionTypeText(NutritionType? nutritionType) {
    switch (nutritionType) {
      case NutritionType.carbs:
        return 'Carbs';
      case NutritionType.fat:
        return 'Fat';
      case NutritionType.protein:
        return 'Protein';
      default:
        return '';
    }
  }
}
