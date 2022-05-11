import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:flutter/material.dart';

class FdTextField extends StatefulWidget {
  const FdTextField({
    Key? key,
    this.validator,
    this.focusNode,
    this.onChanged,
    this.obscure = false,
    this.hint,
    this.controller,
    this.onSubmitted,
    this.textInputAction,
    this.readOnly = false,
    this.onTap,
    this.keyboardType,
    this.maxLength,
  }) : super(key: key);

  final String? hint;
  final bool obscure, readOnly;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged, onSubmitted;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final int? maxLength;

  @override
  _FdTextFieldState createState() => _FdTextFieldState();
}

class _FdTextFieldState extends State<FdTextField> {
  static const InputBorder _inputBorder = UnderlineInputBorder(borderSide: BorderSide(color: AppColors.primary, width: 3));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.selectedBackground,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: widget.controller,
            focusNode: widget.focusNode,
            style: poppinsNormal16,
            cursorColor: AppColors.secondary,
            onChanged: widget.onChanged,
            obscureText: widget.obscure,
            onFieldSubmitted: widget.onSubmitted,
            textInputAction: widget.textInputAction,
            onTap: widget.onTap,
            readOnly: widget.readOnly,
            validator: widget.validator,
            keyboardType: widget.keyboardType,
            maxLength: widget.maxLength,
            decoration: InputDecoration(
              contentPadding: const EdgeInsetsDirectional.only(start: 10),
              hintText: widget.hint ?? '',
              fillColor: AppColors.selectedBackground,
              focusColor: AppColors.selectedBackground,
              hoverColor: AppColors.selectedBackground,
              hintStyle: poppinsNormal16.copyWith(color: Colors.black),
              border: _inputBorder,
              errorBorder: _inputBorder,
              focusedBorder: _inputBorder,
              enabledBorder: _inputBorder,
              disabledBorder: _inputBorder,
              focusedErrorBorder: _inputBorder,
              counterText: '',
            ),
          ),
        ],
      ),
    );
  }
}
