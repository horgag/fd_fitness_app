import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key, this.onPressed, this.title, required this.imagePath, this.size = 30}) : super(key: key);
  final Function()? onPressed;
  final String? title;
  final String imagePath;
  final double size;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        color: AppColors.selectedBackground,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(imagePath, width: size, height: size),
                  const Indent(horizontal: 10),
                  Text(title ?? '', style: nunitoBold20),
                ],
              ),
            ),
            Container(
              height: 3,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
