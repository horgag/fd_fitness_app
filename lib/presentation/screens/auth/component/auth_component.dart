import 'dart:io';

import 'package:fd_fitness_app/presentation/appearence/mixins/form_data/form_data_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/sign_in_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/dialogs/fd_alert_dialog.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fullscreen_loader.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_text_field.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/auth/bloc/auth_bloc.dart';
import 'package:fd_fitness_app/presentation/screens/auth/component/widgets/forgotten_password.dart';
import 'package:fd_fitness_app/presentation/screens/auth/component/widgets/terms_of_use_checkbox.dart';
import 'package:fd_fitness_app/presentation/screens/auth/model/auth_data_model.dart';
import 'package:fd_fitness_app/util/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_screen.dart';
import 'widgets/receive_notifications_checkbox.dart';

class AuthComponent extends StatefulWidget {
  const AuthComponent();

  @override
  _AuthComponentState createState() => _AuthComponentState();
}

class _AuthComponentState extends State<AuthComponent> with FormDataMixin<AuthComponent>, FlToastMixin<AuthComponent> {
  AuthBloc get _bloc => context.read<AuthBloc>();

  TextEditingController get _emailController => controllers[0];

  TextEditingController get _passwordController => controllers[1];
  String? _password;

  @override
  int get amountOfFocusNodes => 3;

  @override
  void initState() {
    super.initState();
    if (_bloc.email != null) _emailController.text = _bloc.email!;
    if (_bloc.password != null) _passwordController.text = _bloc.password!;
    _passwordController.addListener(
      () => setState(() => _password = _passwordController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: _onStateUpdateHandler,
      builder: (BuildContext context, AuthState state) {
        final bool isLoading = state is LoadingAuthState;
        return FullScreenLoaderWidget(
          isLoading: isLoading,
          child: GestureDetector(
            onTap: unfocusAllFocusNodes,
            child: Scaffold(
              body: BaseFdWidget(
                title: _title(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    formWidget(),
                    const Indent(vertical: 50),
                    if (_bloc.isSignUpAuthType) ...<Widget>[
                      TermsOfUseCheckbox(onChanged: _onTermsOfUseChanged),
                      const Indent(vertical: 40),
                    ],
                    _bloc.isLogInAuthType ? const ForgottenPassword() : const Indent(),
                    _replaceAuthWidget(),
                    FdEleveatedButton(
                      title: 'Next',
                      onPressed: () => _submitAuth(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  List<Widget> textFormFields(List<FocusNode> focusNodes) {
    final FocusNode emailFocusNode = focusNodes[0], passwordFocusNode = focusNodes[1], repeatPasswordFocusNode = focusNodes[2];
    final TextEditingController repeatedPasswordController = controllers[2];
    return <Widget>[
      _signInMethods(emailFocusNode, _emailController),
      const Indent(vertical: 20),
      if (_bloc.isSignUpAuthType) ...<Widget>[
        ReceiveNotificationsCheckbox(onChanged: _onReceiveNotificationsChanged),
        const Indent(vertical: 40),
      ],
      _setPassword(passwordFocusNode, repeatPasswordFocusNode, _passwordController, repeatedPasswordController),
    ];
  }

  Widget _replaceAuthWidget() {
    late final String description, buttonTitle;
    if (_bloc.isLogInAuthType) {
      description = 'Don\'t have an account?';
      buttonTitle = 'Sign Up';
    } else {
      description = 'Already have an account?';
      buttonTitle = 'Sign In';
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(description, style: poppinsNormal16),
        TextButton(
          onPressed: _replaceAuth,
          style: TextButton.styleFrom(primary: AppColors.secondary),
          child: Text(buttonTitle, style: poppinsNormal16),
        ),
      ],
    );
  }

  Column _signInMethods(FocusNode _emailFocusNode, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(_subtitle(), style: poppinsNormal16),
        const Indent(vertical: 30),
        SignInButton(
          title: _googleAuthTitle(),
          imagePath: 'assets/images/google.png',
          onPressed: _googleAuth,
          size: 26,
        ),
        const Indent(vertical: 30),
        if (Platform.isIOS) ...<Widget>[
          SignInButton(
            title: _appleAuthTitle(),
            imagePath: 'assets/images/apple.png',
            onPressed: _appleAuth,
          ),
          const Indent(vertical: 30),
        ],
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Center(child: Text('OR', style: nunitoBold20)),
            Center(child: Text(_authWithEmailTitle(), style: nunitoBold20)),
          ],
        ),
        const Indent(vertical: 10),
        FdTextField(
          focusNode: _emailFocusNode,
          controller: controller,
          hint: 'Your Email',
          textInputAction: TextInputAction.next,
          onSubmitted: onFieldSubmitted,
          validator: Validators.emailFieldValidator('Invalid email'),
        ),
      ],
    );
  }

  Column _setPassword(
    FocusNode passwordFocusNode,
    FocusNode repeatPasswordFocusNode,
    TextEditingController passwordController,
    TextEditingController repeatedPasswordController,
  ) {
    return Column(
      children: <Widget>[
        Center(child: Text(_enterPasswordTitle(), style: nunitoBold20)),
        const Indent(vertical: 10),
        FdTextField(
          focusNode: passwordFocusNode,
          controller: passwordController,
          hint: 'Your password',
          obscure: true,
          onSubmitted: onFieldSubmitted,
          validator: Validators.textNotEmptyValidator('Password should not be empty'),
        ),
        if (_bloc.isSignUpAuthType) ...<Widget>[
          const Indent(vertical: 20),
          const Center(child: Text('Repeat Password', style: nunitoBold20)),
          const Indent(vertical: 10),
          FdTextField(
            focusNode: repeatPasswordFocusNode,
            controller: repeatedPasswordController,
            hint: 'Password again',
            obscure: true,
            onSubmitted: onFieldSubmitted,
            validator: Validators.mustMatchFieldValidatorCreator(_password ?? '')('Passwords should match'),
          ),
        ],
      ],
    );
  }

  Future<void> _onStateUpdateHandler(BuildContext context, AuthState state) async {
    if (state is SuccessAuthState) {
      NavigatorUtils.replaceToOnboardingScreen(context);
      showToast('Succeed');
      return;
    } else if (state is ErrorAuthState) {
      String errorMessage = 'Unexpected error occured';
      if (state is GeneralErrorState) {
        errorMessage = 'Error occured';
      } else if (state is EmailAlreadyInUseErrorState) {
        errorMessage = 'Email is already in use';
        final bool? isResult = await showDialog<bool?>(
          context: context,
          builder: (_) => const FdAlertDialog(
            title: 'Email is already used',
            content: 'Do you want to sign in?',
          ),
        );
        if (isResult != null && isResult) _replaceAuth();
      } else if (state is UserNotFoundErrorState) {
        errorMessage = 'User not found';
      } else if (state is WeakPasswordErrorState) {
        errorMessage = 'Weak password';
      } else if (state is WrongPasswordErrorState) {
        errorMessage = 'Wrong password';
      } else if (state is NotAgreedToTermsOfUse) {
        errorMessage = 'Should agree to terms and conditions';
      }
      showToast(errorMessage);
    }
  }

  void _googleAuth() => _bloc.add(const GoogleAuthEvent());

  void _appleAuth() => _bloc.add(const AppleAuthEvent());

  void _submitAuth(BuildContext context) {
    FocusScope.of(context).unfocus();
    if (validateForm()) {
      final String email = _emailController.text;
      final String password = _passwordController.text;
      _bloc.add(EmailAuthEvent(isSignIn: _bloc.isLogInAuthType, email: email, password: password));
    }
  }

  void _replaceAuth() {
    final String? email = _emailController.text;
    final String? password = _passwordController.text;
    final AuthDataModel authData = AuthDataModel(
      authType: _bloc.isLogInAuthType ? AuthType.signUp : AuthType.signIn,
      email: email,
      password: password,
      receiveEmailNotifications: _bloc.receiveEmailNotifications,
    );
    NavigatorUtils.goToAuthScreen(context, authData);
  }

  void _onReceiveNotificationsChanged(bool data) => _bloc.add(SelectReceiveEmailNotificationsEvent(data));

  void _onTermsOfUseChanged(bool data) => _bloc.add(SelectTermsOfUseEvent(data));

  String _googleAuthTitle() => _bloc.isLogInAuthType ? 'Sign in with Google' : 'Sign up with Google';

  String _appleAuthTitle() => _bloc.isLogInAuthType ? 'Sign in with Apple' : 'Sign up with Apple';

  String _authWithEmailTitle() => _bloc.isLogInAuthType ? 'Sign in with an email' : 'Sign up with an email';

  String _enterPasswordTitle() => _bloc.isLogInAuthType ? 'Enter a password' : 'Set a password';

  String _title() => _bloc.isLogInAuthType ? 'Welcome back to The FD Way' : 'Start using The FD Way';

  String _subtitle() => _bloc.isLogInAuthType
      ? 'Please sign in with your chosen service provider or email'
      : 'Please sign up with your chosen service provider or email';
}
