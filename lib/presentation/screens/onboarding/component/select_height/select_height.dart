import 'package:fd_fitness_app/presentation/appearence/mixins/form_data/form_data_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_number_text_field.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:fd_fitness_app/util/validators/validators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectHeightComponent extends StatefulWidget {
  const SelectHeightComponent({this.onPressed, this.onBackPressed});

  final Function()? onPressed;
  final Function()? onBackPressed;

  @override
  _SelectHeightComponentState createState() => _SelectHeightComponentState();
}

class _SelectHeightComponentState extends State<SelectHeightComponent> with FormDataMixin<SelectHeightComponent> {
  OnboardingBloc get _bloc => context.read<OnboardingBloc>();
  late final TextEditingController _controller = controllers[0];
  late final FocusNode _focusNode = focusNodes[0];
  bool _isButtonEnabled = false;

  @override
  int get amountOfFocusNodes => 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _controller.addListener(() {
        _isButtonEnabled = _controller.text.isNotEmpty;
        setState(() {});
      });
    });
  }

  @override
  List<Widget> textFormFields(List<FocusNode> focusNodes) => <Widget>[
        FdNumberTextField(
          text: ' ',
          suffixText: 'cm',
          width: 130,
          controller: _controller,
          focusNode: _focusNode,
          validator: Validators.heightFieldValidator('Between 120-270cm'),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _focusNode.hasFocus ? _focusNode.unfocus() : null,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: BaseFdWidget(
          title: 'Enter your height',
          enabledScroll: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('Please add your height. This helps us to find the best daily diet for you.', style: poppinsNormal16),
                    const Indent(vertical: 30),
                    Center(child: formWidget()),
                  ],
                ),
              ),
              const Indent(vertical: 10),
              FdEleveatedButton(
                enabled: _isButtonEnabled,
                title: 'Select',
                onPressed: () {
                  if (validateForm()) {
                    final int height = int.parse(_controller.text.trim());
                    _bloc.add(SelectHeightEvent(height));
                    widget.onPressed?.call();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
