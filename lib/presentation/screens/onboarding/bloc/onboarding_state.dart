part of 'onboarding_bloc.dart';

class OnboardingState extends Equatable {
  const OnboardingState({
    this.sex,
    this.healthIssues,
    this.activenessDuringDayType,
    this.notificationEventType,
    this.dateOfBirth,
    this.isLoading = false,
    this.isOnboardingCompleted = false,
    this.height,
    this.error,
  });

  OnboardingState.copy(
    OnboardingState copy, {
    SexType? sex,
    List<HealthIssuesType>? healthIssues,
    ActivityLevelType? activenessDuringDayType,
    List<NotificationEventType>? notificationEventType,
    DateTime? dob,
    bool? isLoading,
    bool? isOnboardingCompleted,
    int? height,
    Object? error,
  })  : sex = sex ?? copy.sex,
        height = height ?? copy.height,
        healthIssues = healthIssues ?? copy.healthIssues,
        error = error ?? copy.error,
        activenessDuringDayType = activenessDuringDayType ?? copy.activenessDuringDayType,
        notificationEventType = notificationEventType ?? copy.notificationEventType,
        dateOfBirth = dob ?? copy.dateOfBirth,
        isLoading = isLoading ?? copy.isLoading,
        isOnboardingCompleted = isOnboardingCompleted ?? copy.isOnboardingCompleted;

  final SexType? sex;
  final List<HealthIssuesType>? healthIssues;
  final ActivityLevelType? activenessDuringDayType;
  final List<NotificationEventType>? notificationEventType;
  final DateTime? dateOfBirth;
  final bool isLoading;
  final Object? error;
  final bool isOnboardingCompleted;
  final int? height;

  @override
  List<Object?> get props => <Object?>[
        sex,
        height,
        healthIssues,
        activenessDuringDayType,
        notificationEventType,
        dateOfBirth,
        isOnboardingCompleted,
        isLoading,
        error,
      ];

  @override
  bool get stringify => true;
}
