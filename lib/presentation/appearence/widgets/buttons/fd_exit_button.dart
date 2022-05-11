import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FdExitButton extends StatefulWidget {
  const FdExitButton({Key? key, this.onTap, this.buttonSize = 48, this.isElevated = false}) : super(key: key);

  final double buttonSize;
  final bool isElevated;
  final Function()? onTap;

  @override
  _FdExitButtonState createState() => _FdExitButtonState();
}

class _FdExitButtonState extends State<FdExitButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.buttonSize,
        height: widget.buttonSize,
        decoration: _decoration(),
        child: Icon(
          Icons.close,
          size: widget.buttonSize,
          color: AppColors.secondary,
        ),
      ),
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: widget.isElevated
          ? const <BoxShadow>[
              BoxShadow(
                color: Color(0x0B000029),
                offset: Offset(0, 3),
                blurRadius: 8,
                spreadRadius: 4,
              ),
            ]
          : null,
    );
  }
}
