import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';

const String kgSuffix = 'kg';
const String lbsSuffix = 'lbs';

class FdNumberTextField extends StatefulWidget {
  const FdNumberTextField({
    Key? key,
    this.text,
    this.hint,
    this.width = _textFieldWeight,
    this.onChanged,
    this.focusNode,
    this.validator,
    this.suffixText,
    this.controller,
    this.onSubmitted,
    this.textInputAction,
    this.alwaysVisibleSuffix = true,
    this.alwaysVisibleSuffixText,
    this.enabled = true,
  }) : super(key: key);

  final FocusNode? focusNode;
  final bool alwaysVisibleSuffix, enabled;
  final double width;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged, onSubmitted;
  final String? text, hint, suffixText, alwaysVisibleSuffixText;

  static const double _textFieldHeight = 70, _textFieldWeight = 97;

  @override
  _FdNumberTextFieldState createState() => _FdNumberTextFieldState();
}

class _FdNumberTextFieldState extends State<FdNumberTextField> {
  static const InputBorder _inputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.secondary,
      width: 5,
    ),
  );

  late final TextEditingController _controller = widget.controller ?? TextEditingController();
  late final FocusNode _focusNode = widget.focusNode ?? FocusNode();

  @override
  void initState() {
    super.initState();
    if (widget.text != null) _controller.text = widget.text!;
    if (widget.alwaysVisibleSuffix) _focusNode.addListener(_alwaysVisibleSuffix);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_alwaysVisibleSuffix);
    if (widget.controller == null) _controller.dispose();
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: FdNumberTextField._textFieldHeight,
      width: widget.width,
      child: TextFormField(
        controller: _controller,
        focusNode: widget.focusNode,
        style: nunitoBold40.copyWith(height: 1),
        cursorColor: AppColors.secondary,
        onChanged: widget.onChanged,
        onFieldSubmitted: widget.onSubmitted,
        textInputAction: widget.textInputAction,
        validator: widget.validator,
        enabled: widget.enabled,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: widget.hint ?? '',
          hintStyle: nunitoBold40.copyWith(color: Colors.black, height: 1.2),
          suffixText: widget.suffixText,
          suffixStyle: nunitoBold40.copyWith(color: Colors.black, height: 1.2),
          contentPadding: EdgeInsets.zero,
          border: _inputBorder,
          errorBorder: _inputBorder,
          focusedBorder: _inputBorder,
          enabledBorder: _inputBorder,
          disabledBorder: _inputBorder,
          focusedErrorBorder: _inputBorder,
        ),
      ),
    );
  }

  void _alwaysVisibleSuffix() {
    if (!_focusNode.hasFocus) {
      final String controllerText = _controller.text;
      if (controllerText.isEmpty) {
        _controller.text = widget.alwaysVisibleSuffixText ?? '00';
        setState(() {});
      }
    }
  }
}
