import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkbox.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';

class TermsOfUseCheckbox extends StatefulWidget {
  const TermsOfUseCheckbox({Key? key, required this.onChanged}) : super(key: key);

  final Function(bool) onChanged;
  @override
  _TermsOfUseCheckboxState createState() => _TermsOfUseCheckboxState();
}

class _TermsOfUseCheckboxState extends State<TermsOfUseCheckbox> {
  bool _agreeToTermsValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text('Agree to ', style: poppinsNormal16),
            GestureDetector(
              child: Text(
                'terms and conditions',
                style: poppinsNormal16.copyWith(color: AppColors.primary),
              ),
            ),
          ],
        ),
        const Indent(vertical: 20),
        Row(
          children: <Widget>[
            FdCheckbox(
              value: _agreeToTermsValue,
              onChanged: (bool? value) {
                if (_agreeToTermsValue != value) {
                  _agreeToTermsValue = value ?? false;
                  widget.onChanged(_agreeToTermsValue);
                  setState(() {});
                }
              },
            ),
            const Indent(horizontal: 10),
            const Text('‘I agree’', style: poppinsNormal16),
          ],
        ),
      ],
    );
  }
}
