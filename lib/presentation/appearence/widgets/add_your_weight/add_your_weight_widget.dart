import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkbox.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkboxlist.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_number_text_field.dart';
import 'package:flutter/material.dart';

class AddYourWeightWidget extends StatefulWidget {
  const AddYourWeightWidget({Key? key, required this.onSaved}) : super(key: key);
  final Function(String, bool) onSaved;

  @override
  _AddYourWeightWidgetState createState() => _AddYourWeightWidgetState();
}

class _AddYourWeightWidgetState extends State<AddYourWeightWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  bool _showLbs = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Text(
          'Please add your weight. This helps you see your progress and helps to keep you motivated when needed.',
          style: poppinsNormal16,
        ),
        const Indent(vertical: 30),
        Center(
          child: FdNumberTextField(
            text: ' ',
            suffixText: _showLbs ? lbsSuffix : kgSuffix,
            focusNode: _focusNode,
            controller: _controller,
          ),
        ),
        const Indent(vertical: 30),
        const Text(
          'Please choose whether you measure your weight in kgs or lbs',
          style: poppinsNormal16,
        ),
        const Indent(vertical: 15),
        Row(
          children: [
            FdCheckbox(
              value: !_showLbs,
              onChanged: (bool? value) {
                if (_showLbs) {
                  if (value != null) {
                    _showLbs = !value;
                  }
                  setState(() {});
                }
              },
            ),
            const Indent(horizontal: 10),
            const Text('kgs', style: poppinsNormal16),
            const Indent(horizontal: 25),
            FdCheckbox(
              value: _showLbs,
              onChanged: (bool? value) {
                if (!_showLbs) {
                  _showLbs = value ?? true;
                  setState(() {});
                }
              },
            ),
            const Indent(horizontal: 10),
            const Text('lbs', style: poppinsNormal16),
          ],
        ),
        const Indent(vertical: 60),
        FdEleveatedButton(
          title: 'Save',
          onPressed: () => widget.onSaved(_controller.text.trim(), _showLbs),
        ),
      ],
    );
  }
}
