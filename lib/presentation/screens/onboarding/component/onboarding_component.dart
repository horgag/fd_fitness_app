import 'package:collection/collection.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/activity_level_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_issues_type.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/health_issues/component/any_issues.dart';
import 'package:fd_fitness_app/presentation/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../activity_level/component/normal_day_activity.dart';
import 'date_of_birth/select_date_of_birth.dart';
import 'push_notifications/push_notifications_component.dart';
import 'select_height/select_height.dart';
import 'select_sex/select_sex_component.dart';

class OnboardingComponent extends StatefulWidget {
  const OnboardingComponent({Key? key}) : super(key: key);

  @override
  _OnboardingComponentState createState() => _OnboardingComponentState();
}

class _OnboardingComponentState extends State<OnboardingComponent> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          SelectHeightComponent(
            onPressed: _moveToNext,
            onBackPressed: _onBackPressed,
          ),
          SelectSexComponent(
            onPressed: _moveToNext,
            onBackPressed: _onBackPressed,
          ),
          SelectDobComponent(
            onPressed: _moveToNext,
            onBackPressed: _onBackPressed,
          ),
          AnyIssuesComponent(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: BackButton(
                color: AppColors.primary,
                onPressed: () => _onBackPressed(),
              ),
            ),
            onPressed: _moveToNext,
            onChange: (Map<HealthIssuesType, bool> selections) {
              final List<HealthIssuesType> selectedTypes = selections.keys.where((HealthIssuesType el) => selections[el]!).toList();
              context.read<OnboardingBloc>().add(SelectHealthIssuesTypeEvent(selectedTypes));
            },
          ),
          NormalDayActivityComponent(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: BackButton(
                color: AppColors.primary,
                onPressed: () => _onBackPressed(),
              ),
            ),
            onPressed: _moveToNext,
            onChange: (String? input) {
              final int activeHours = int.parse(input!);
              ActivityLevelType? activityLevelType;
              if (activeHours < 2) {
                activityLevelType = ActivityLevelType.bad;
              } else if (activeHours > 2 && activeHours < 5) {
                activityLevelType = ActivityLevelType.moderate;
              } else if (activeHours > 5) {
                activityLevelType = ActivityLevelType.high;
              }
              if (activityLevelType != null) context.read<OnboardingBloc>().add(SelectActivenessDuringDayTypeEvent(activityLevelType));
            },
          ),
          PushNotificationComponent(
            onPressed: () async {
              await NavigatorUtils.goToUpdateImageAndWeightScreen(context);
              NavigatorUtils.replaceToIntroductionScreen(context);
            },
            onBackPressed: _onBackPressed,
          ),
        ],
      ),
    );
  }

  void _onBackPressed() {
    final int current = _pageController.page?.toInt() ?? 0;
    _pageController.animateToPage(current - 1, duration: const Duration(milliseconds: 300), curve: Curves.linear);
  }

  void _moveToNext() {
    final int current = _pageController.page?.toInt() ?? 0;
    if (current >= 0) {
      _pageController.animateToPage(current + 1, duration: const Duration(milliseconds: 300), curve: Curves.linear);
    }
  }
}
