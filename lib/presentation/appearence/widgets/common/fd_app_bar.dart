import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:flutter/material.dart';

class FdAppBar extends AppBar {
  FdAppBar([Object? result])
      : super(
          leading: FdBackButton(result),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        );
}

class FdBackButton extends StatelessWidget {
  const FdBackButton([this.result]);
  final Object? result;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: AlignmentDirectional.centerStart,
      onPressed: () => NavigatorUtils.goBack(context, result),
      padding: EdgeInsetsDirectional.zero,
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: AppColors.secondary,
        size: 40,
      ),
    );
  }
}
