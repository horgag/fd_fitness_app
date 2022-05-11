import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';

class FdLoader extends StatelessWidget {
  const FdLoader({Key? key, this.value, this.color = AppColors.primary}) : super(key: key);
  final double? value;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      value: value,
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }
}
