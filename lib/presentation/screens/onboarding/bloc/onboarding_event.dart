part of 'onboarding_bloc.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object?> get props => <Object?>[];
}

class SelectDateOfBirthEvent extends OnboardingEvent {
  const SelectDateOfBirthEvent(this.dob);

  final DateTime dob;

  @override
  List<Object?> get props => <Object?>[dob];
}

class SelectSexEvent extends OnboardingEvent {
  const SelectSexEvent(this.sex);

  final SexType sex;

  @override
  List<Object?> get props => <Object?>[sex];
}

class SelectHealthIssuesTypeEvent extends OnboardingEvent {
  const SelectHealthIssuesTypeEvent(this.healthIssues);

  final List<HealthIssuesType> healthIssues;

  @override
  List<Object?> get props => <Object?>[healthIssues];
}

class SelectActivenessDuringDayTypeEvent extends OnboardingEvent {
  const SelectActivenessDuringDayTypeEvent(this.activenessDuringDayType);

  final ActivityLevelType activenessDuringDayType;

  @override
  List<Object?> get props => <Object?>[activenessDuringDayType];
}

class SelectNotificationEventTypeEvent extends OnboardingEvent {
  const SelectNotificationEventTypeEvent(this.notificationEventType);

  final List<NotificationEventType> notificationEventType;

  @override
  List<Object?> get props => <Object?>[notificationEventType];
}

class SelectHeightEvent extends OnboardingEvent {
  const SelectHeightEvent(this.height);

  final int height;

  @override
  List<Object?> get props => <Object?>[height];
}

class CompleteOnboardingEvent extends OnboardingEvent {}
