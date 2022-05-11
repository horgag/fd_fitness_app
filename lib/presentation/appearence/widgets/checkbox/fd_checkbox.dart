import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';

class FdCheckbox extends StatefulWidget {
  const FdCheckbox({Key? key, this.value, this.onChanged}) : super(key: key);
  final bool? value;
  final Function(bool?)? onChanged;

  @override
  _FdCheckboxState createState() => _FdCheckboxState();
}

class _FdCheckboxState extends State<FdCheckbox> {
  static const double _iconSize = 30, _size = 35;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onChanged?.call(widget.value == null ? null : !widget.value!),
      child: Container(
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.borderPrimary,
            width: 3,
          ),
        ),
        child: Center(
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: (widget.value ?? false) ? 1 : 0,
            child: const Icon(
              Icons.check_rounded,
              color: AppColors.borderPrimary,
              size: _iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
