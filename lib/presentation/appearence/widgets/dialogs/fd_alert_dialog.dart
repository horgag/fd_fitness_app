import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:flutter/material.dart';

class FdAlertDialog extends StatelessWidget {
  const FdAlertDialog({
    Key? key,
    this.title,
    this.content,
    this.positiveText,
    this.negativeText,
    this.onPositivePressed,
    this.onNegativePressed,
  }) : super(key: key);

  final String? positiveText, negativeText, title, content;
  final Function()? onPositivePressed, onNegativePressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title != null ? Text(title!, style: nunitoBold20) : const Indent(),
      content: content != null ? Text(content!, style: poppinsNormal16) : const Indent(),
      actions: <Widget>[
        _defaultButton(context, negativeText ?? 'NO', false),
        _defaultButton(context, positiveText ?? 'YES', true),
      ],
    );
  }

  Widget _defaultButton(BuildContext context, String title, [Object? args]) {
    return TextButton(
      onPressed: () => NavigatorUtils.goBack(context, args),
      child: Text(title, style: poppinsNormal16),
    );
  }
}
