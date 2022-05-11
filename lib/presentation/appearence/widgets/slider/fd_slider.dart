import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FdSlider extends StatelessWidget {
  const FdSlider({
    Key? key,
    required this.value,
    this.min = 0,
    this.max = 1,
    this.divisions,
    this.onChanged,
  }) : super(key: key);

  final double value, min, max;
  final int? divisions;
  final ValueChanged<double>? onChanged;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbColor: AppColors.borderPrimary,
        activeTrackColor: AppColors.borderPrimary,
        inactiveTrackColor: AppColors.selectedBackground,
        overlayColor: AppColors.borderPrimary.withAlpha(70),
        trackHeight: 16.0,
        trackShape: const RoundedRectSliderTrackShape(),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
        activeTickMarkColor: AppColors.primary,
        inactiveTickMarkColor: AppColors.borderPrimary.withOpacity(0.8),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 20.0),
      ),
      child: Slider(
        value: value,
        min: min,
        max: max,
        divisions: divisions,
        onChanged: onChanged,
      ),
    );
  }
}
