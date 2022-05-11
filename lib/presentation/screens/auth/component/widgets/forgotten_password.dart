import 'package:fd_fitness_app/presentation/appearence/mixins/form_data/form_data_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_text_field.dart';
import 'package:fd_fitness_app/presentation/screens/auth/bloc/auth_bloc.dart';
import 'package:fd_fitness_app/util/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgottenPassword extends StatefulWidget {
  const ForgottenPassword();

  @override
  _ForgottenPasswordState createState() => _ForgottenPasswordState();
}

class _ForgottenPasswordState extends State<ForgottenPassword> with FormDataMixin<ForgottenPassword>, FlToastMixin<ForgottenPassword> {
  AuthBloc get _bloc => context.read<AuthBloc>();

  TextEditingController get _emailController => controllers[0];

  @override
  int get amountOfFocusNodes => 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Forgotten Password?', style: poppinsNormal16),
        TextButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              builder: (BuildContext context) {
                return _content(context);
              },
            );
          },
          style: TextButton.styleFrom(primary: AppColors.secondary),
          child: const Text('Reset', style: poppinsNormal16),
        ),
      ],
    );
  }

  Container _content(BuildContext context) {
    return Container(
      height: 350.0,
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'Reset your password',
                style: nunitoBold30,
              ),
              const Indent(vertical: 20.0),
              formWidget(),
              const Indent(vertical: 40.0),
              FdEleveatedButton(
                title: 'Request Password Reset',
                onPressed: () {
                  _passwordResetEmail();
                  showToast('We\’ve just emailed you. Please check your junk folders.');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  List<Widget> textFormFields(List<FocusNode> focusNodes) {
    final FocusNode emailFocusNode = focusNodes[0];
    return <Widget>[
      FdTextField(
        focusNode: emailFocusNode,
        controller: _emailController,
        hint: 'Your Email',
        textInputAction: TextInputAction.next,
        onSubmitted: onFieldSubmitted,
        validator: Validators.emailFieldValidator('Invalid email'),
      ),
    ];
  }

  void _passwordResetEmail() {
    if (validateForm()) {
      final String email = _emailController.text;
      _bloc.add(EmailForgottenPasswordEvent(email: email));
    }
  }
}
