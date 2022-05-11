import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkbox.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:flutter/material.dart';

class ReceiveNotificationsCheckbox extends StatefulWidget {
  const ReceiveNotificationsCheckbox({Key? key, required this.onChanged}) : super(key: key);

  final Function(bool) onChanged;

  @override
  _ReceiveNotificationsCheckboxState createState() => _ReceiveNotificationsCheckboxState();
}

class _ReceiveNotificationsCheckboxState extends State<ReceiveNotificationsCheckbox> {
  bool? _isValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text('Do you want to stay up-to-date with The FD way and receive emails?', style: poppinsNormal16),
        const Indent(vertical: 10),
        Row(
          children: <Widget>[
            FdCheckbox(
              value: _isValue ?? false,
              onChanged: (bool? value) {
                if (!(_isValue ?? false)) {
                  _isValue = value ?? false;
                  widget.onChanged(_isValue!);
                  setState(() {});
                }
              },
            ),
            const Indent(horizontal: 10),
            const Text('Yes', style: poppinsNormal16),
            const Indent(horizontal: 25),
            FdCheckbox(
              value: !(_isValue ?? true),
              onChanged: (bool? value) {
                if (_isValue ?? true) {
                  _isValue = !(value ?? false);
                  widget.onChanged(_isValue!);
                  setState(() {});
                }
              },
            ),
            const Indent(horizontal: 10),
            const Text('No', style: poppinsNormal16),
          ],
        ),
      ],
    );
  }
}
