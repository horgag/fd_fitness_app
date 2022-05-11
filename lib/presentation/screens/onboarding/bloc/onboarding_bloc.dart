import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/cycle_end/cycle_end_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/activity_level_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_issues_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/measures/user_measures.dart';
import 'package:fd_fitness_app/domain/models/user_model/notification_event_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/sex_type.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc(this._authRepository, this._userRepository) : super(const OnboardingState());

  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  @override
  Stream<OnboardingState> mapEventToState(OnboardingEvent event) async* {
    if (event is SelectDateOfBirthEvent) {
      yield OnboardingState.copy(state, dob: event.dob);
    } else if (event is SelectSexEvent) {
      yield OnboardingState.copy(state, sex: event.sex);
    } else if (event is SelectHealthIssuesTypeEvent) {
      yield OnboardingState.copy(state, healthIssues: event.healthIssues);
    } else if (event is SelectActivenessDuringDayTypeEvent) {
      yield OnboardingState.copy(state, activenessDuringDayType: event.activenessDuringDayType);
    } else if (event is SelectNotificationEventTypeEvent) {
      yield OnboardingState.copy(state, notificationEventType: event.notificationEventType);
    } else if (event is SelectHeightEvent) {
      yield OnboardingState.copy(state, height: event.height);
    } else if (event is CompleteOnboardingEvent) {
      yield* _completeOnboarding();
    }
  }

  Stream<OnboardingState> _completeOnboarding() async* {
    yield OnboardingState.copy(state, isLoading: true);
    //We're not doing anything with push notifications yet apart from just requesting them
    final NotificationSettings _ = await FirebaseMessaging.instance.requestPermission();
    yield await _authRepository
        .authModel()
        .then(
          (AuthModel value) async => await _userRepository
              .setUser(
                UserModel(
                  id: value.userId!,
                  isOnboardingCompleted: true,
                  userMeasures: UserMeasures(
                    height: state.height,
                  ),
                  healthModel: HealthModel(
                    sex: state.sex,
                    healthIssues: state.healthIssues,
                    activenessDuringDay: state.activenessDuringDayType,
                  ),
                  dateOfBirth: state.dateOfBirth,
                  notificationEvents: state.notificationEventType,
                  cycleEndModel: CycleEndModel(DateTime.now()),
                ),
              )
              .then((_) => OnboardingState.copy(state, isLoading: false, isOnboardingCompleted: true)),
        )
        .catchError((Object error) {
      Log().e('Failed completing onboarding: $error');
    });
  }
}
