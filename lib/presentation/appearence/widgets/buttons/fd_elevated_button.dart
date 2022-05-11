import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/common_properties.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class FdEleveatedButton extends StatelessWidget {
  const FdEleveatedButton({
    Key? key,
    this.title,
    required this.onPressed,
    this.margin,
    this.enabled = true,
  }) : super(key: key);
  final String? title;
  final bool enabled;
  final Function() onPressed;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final double screenBottomPadding = MediaQuery.of(context).padding.bottom;
    final double bottomPadding = screenBottomPadding > 0 ? screenBottomPadding : UiHelper.bottomNavigationBarHeight;
    return GestureDetector(
      onTap: enabled ? onPressed : null,
      child: Container(
        height: 68,
        width: MediaQuery.of(context).size.width,
        margin: margin ?? EdgeInsetsDirectional.only(bottom: bottomPadding),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
            colors: enabled
                ? <Color>[
                    AppColors.secondary,
                    AppColors.primary,
                  ]
                : <Color>[
                    Colors.grey[400]!,
                    Colors.grey[600]!,
                  ],
          ),
          borderRadius: largeBorderRadius,
        ),
        child: Center(
          child: Text(
            title ?? 'Get Started',
            style: nunitoBold24.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
