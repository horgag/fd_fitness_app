import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/common_properties.dart';
import 'package:flutter/material.dart';

class BasePlaceholder extends StatelessWidget {
  const BasePlaceholder({
    Key? key,
    required this.child,
    this.onPressed,
    this.primary = AppColors.selectedBackground,
    this.height = placeholderHeight,
    this.width = placeholderWeight,
  }) : super(key: key);

  static const double placeholderHeight = 146, placeholderWeight = 138;

  final Color primary;
  final Widget child;
  final VoidCallback? onPressed;
  final double height, width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed?.call,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: smallBorderRadius,
        ),
        child: ClipRRect(
          borderRadius: smallBorderRadius,
          child: child,
        ),
      ),
    );
  }
}
