import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/common_properties.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
    this.max = 1,
    this.value = 0,
    this.height = 18,
    this.foregroundColor = AppColors.primary,
    this.backgroundColor = AppColors.selectedBackground,
    this.colorsThreshold,
  }) : super(key: key);

  final double max, value, height;
  final Color foregroundColor, backgroundColor;
  final Map<double, Color>? colorsThreshold;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double screenWidth = constraints.maxWidth;
          return Stack(
            children: <Widget>[
              _background(screenWidth),
              _foreground(screenWidth),
            ],
          );
        },
      ),
    );
  }

  Widget _foreground(double screenWidth) {
    final double width = screenWidth * value;
    final Color? color;
    if (colorsThreshold == null) {
      color = foregroundColor;
    } else {
      final double colorKey = colorsThreshold!.keys.reduce(
        (double prevValue, double key) => value >= prevValue && value < key ? prevValue : key,
      );
      color = colorsThreshold![colorKey]!;
    }
    return Container(
      width: width,
      decoration: _decoration(color),
    );
  }

  Widget _background(double screenWidth) {
    return Container(
      width: screenWidth,
      decoration: _decoration(backgroundColor),
    );
  }

  Decoration _decoration(Color color) => BoxDecoration(
        color: color,
        borderRadius: largeBorderRadius,
      );
}
