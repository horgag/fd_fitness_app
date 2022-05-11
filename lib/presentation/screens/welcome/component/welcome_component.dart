import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/welcome/cubit/welcome_cubit.dart';

class WelcomeComponent extends StatefulWidget {
  const WelcomeComponent();

  @override
  _WelcomeComponentState createState() => _WelcomeComponentState();
}

class _WelcomeComponentState extends State<WelcomeComponent> {
  final PageController _pageController = PageController();
  WelcomeCubit get _cubit => context.read<WelcomeCubit>();

  @override
  void initState() {
    super.initState();
    // Сalls _cubit.checkUser after wudget tree is built for receiving events in BlocConsumer
    WidgetsBinding.instance!.addPostFrameCallback((_) => _cubit.checkUser());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 3, 38, 1),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          _welcome(),
        ],
      ),
    );
  }

  Widget _welcome() {
    return BlocConsumer<WelcomeCubit, WelcomeState>(
      listener: (_, WelcomeState state) {
        if (state is UserAlreadyLoggedInState)
          NavigatorUtils.replaceToOnboardingScreen(context);
        else if (state is UserCompletedOnboardingLoggedInState) NavigatorUtils.replaceToMainScreen(context);
      },
      builder: (BuildContext context, WelcomeState state) {
        final bool isLoading = state is LoadingState || state is UserCompletedOnboardingLoggedInState || state is UserAlreadyLoggedInState;
        return Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                'assets/images/startbg.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            if (isLoading)
              const Center(child: FdLoader())
            else
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Welcome to The FD Way',
                              style: nunitoBold40.copyWith(color: Colors.white),
                            ),
                            Text(
                              'Your home for fitness and healthy eating. Before we get started we are going to have to create an account',
                              style: poppinsNormal16.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      FdEleveatedButton(
                        onPressed: () {
                          NavigatorUtils.goToAuthScreen(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
