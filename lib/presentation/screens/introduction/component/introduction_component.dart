import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';

import 'inspiration/inspiration_component.dart';
import 'start_journey/start_journey_component.dart';
import 'welcome/inroduction_welcome.dart';

class IntroductionComponent extends StatefulWidget {
  const IntroductionComponent({Key? key}) : super(key: key);

  @override
  _IntroductionComponentState createState() => _IntroductionComponentState();
}

class _IntroductionComponentState extends State<IntroductionComponent> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          IntroductionWelcomeComponent(onPressed: _moveToNext),
          StartJourneyComponent(onPressed: _moveToNext),
          InspirationComponent(onPressed: () => NavigatorUtils.returnToMainScreen(context)),
        ],
      ),
    );
  }

  void _moveToNext() {
    final int current = _pageController.page?.toInt() ?? 0;
    _pageController.animateToPage(current + 1, duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }
}
