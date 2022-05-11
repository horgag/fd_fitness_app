import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_number_text_field.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';

class EndOfPhaseComponent extends StatefulWidget {
  const EndOfPhaseComponent({Key? key, required this.weightLost}) : super(key: key);
  final int weightLost;
  @override
  _EndOfPhaseComponentState createState() => _EndOfPhaseComponentState();
}

class _EndOfPhaseComponentState extends State<EndOfPhaseComponent> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_focusNode.hasFocus) _focusNode.unfocus();
      },
      child: Scaffold(
        body: BaseFdWidget(
          contentPadding: EdgeInsets.zero,
          child: Column(
            children: <Widget>[
              _titleAndSubtitle(),
              const Indent(vertical: 30),
              _wellDone(),
              _weight(),
              const Indent(vertical: 60),
              _nextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Padding _nextButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: FdEleveatedButton(
        title: 'Next',
        onPressed: () {
          NavigatorUtils.goBack(context);
        },
      ),
    );
  }

  Padding _titleAndSubtitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          AnimatedTitleText('Your phase has come to an end'),
          Indent(vertical: 30),
          Text(
            'Please upload your first image. This helps you see your progress and helps to keeps you motivated when needed.',
            style: poppinsNormal16,
          ),
        ],
      ),
    );
  }

  Padding _weight() {
    late final String resultText;
    final int weightLost = widget.weightLost;
    if (weightLost < 0) {
      resultText = 'lost';
    } else if (weightLost > 0) {
      resultText = 'gained';
    } else {
      resultText = 'not changed';
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
          const Indent(vertical: 30),
          Text(
            'You have $resultText',
            style: nunitoBold24,
          ),
          const Indent(vertical: 10),
          FdNumberTextField(
            text: weightLost.abs().toString().padLeft(2, '0'),
            suffixText: kgSuffix,
            focusNode: _focusNode,
            controller: _controller,
            enabled: false,
          ),
        ],
      ),
    );
  }

  Stack _wellDone() {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Image.asset(
          'assets/images/welldonebg.png',
          fit: BoxFit.fill,
          scale: 1,
        ),
        Text(
          'Well Done!',
          style: nunitoBold40.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
