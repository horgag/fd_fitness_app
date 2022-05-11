import 'package:fd_fitness_app/domain/models/user_model/notification_event_type.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkboxlist.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fullscreen_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PushNotificationComponent extends StatefulWidget {
  const PushNotificationComponent({this.onPressed, this.onBackPressed});

  final Function()? onPressed;
  final Function()? onBackPressed;

  @override
  _PushNotificationComponentState createState() => _PushNotificationComponentState();
}

class _PushNotificationComponentState extends State<PushNotificationComponent> {
  OnboardingBloc get _bloc => context.read<OnboardingBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (BuildContext context, OnboardingState state) {
        if (state.isOnboardingCompleted) widget.onPressed?.call();
      },
      builder: (BuildContext context, OnboardingState state) {
        final bool isLoading = state.isLoading;
        return FullScreenLoaderWidget(
          isLoading: isLoading,
          child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: BackButton(
                color: AppColors.primary,
                onPressed: widget.onBackPressed,
              ),
            ),
            body: BaseFdWidget(
              title: 'We would like to stay in touch',
              enabledScroll: false,
              child: FdCheckboxList<NotificationEventType>(
                subtitle:
                    'We would like to send you push notifications for your check ins, motivations and reminders about staying on track.',
                choices: NotificationEventType.values,
                buttonTitle: 'Accept',
                titleBuilder: (NotificationEventType type) {
                  if (type == NotificationEventType.pushNotifications) {
                    return 'Push notifications';
                  } else if (type == NotificationEventType.checkInAndProgress) {
                    return 'Check in and progress';
                  } else if (type == NotificationEventType.motivationAndReminders) {
                    return 'Motivation and reminders';
                  } else if (type == NotificationEventType.accountIssues) {
                    return 'Account issues';
                  }
                  return '';
                },
                onChange: (Map<NotificationEventType, bool> selections) {
                  final List<NotificationEventType> selectedTypes =
                      selections.keys.where((NotificationEventType el) => selections[el]!).toList();
                  _bloc.add(SelectNotificationEventTypeEvent(selectedTypes));
                },
                onPressed: (_) => _bloc.add(CompleteOnboardingEvent()),
              ),
            ),
          ),
        );
      },
    );
  }
}
