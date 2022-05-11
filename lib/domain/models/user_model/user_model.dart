import 'package:flutter/foundation.dart';

import 'package:fd_fitness_app/domain/models/user_model/notification_event_type.dart';

import 'cycle_end/cycle_end_model.dart';
import 'health/activity_level_type.dart';
import 'health/health_issues_type.dart';
import 'health/health_model.dart';
import 'health/sex_type.dart';
import 'measures/user_measures.dart';

class UserModel {
  const UserModel({
    required this.id,
    this.isOnboardingCompleted,
    this.healthModel,
    this.userMeasures,
    this.dateOfBirth,
    this.cycleEndModel,
    this.notificationEvents,
  });

  UserModel.fromJson(this.id, Map<String, dynamic> json)
      : isOnboardingCompleted = json[isOnboardingCompletedKey],
        healthModel = json[healthModelKey] != null ? HealthModel.fromJson(json[healthModelKey]) : null,
        userMeasures = json[measuresKey] != null ? UserMeasures.fromJson(json[measuresKey]) : null,
        dateOfBirth = json[dateOfBirthKey] != null ? DateTime.fromMillisecondsSinceEpoch(json[dateOfBirthKey]) : null,
        cycleEndModel = json[cycleEndModelKey] != null ? CycleEndModel.fromJson(json[cycleEndModelKey]) : null,
        notificationEvents =
            json[notificationEventsKey] != null ? List<String>.from(json[notificationEventsKey]).toNotificationEvents() : null;

  Map<String, dynamic> toJson() => <String, dynamic>{
        isOnboardingCompletedKey: isOnboardingCompleted,
        healthModelKey: healthModel?.toJson(),
        measuresKey: userMeasures?.toJson(),
        dateOfBirthKey: dateOfBirth?.millisecondsSinceEpoch,
        cycleEndModelKey: cycleEndModel?.toJson(),
        notificationEventsKey: notificationEvents?.isNotEmpty ?? false
            ? notificationEvents!
                .map(
                  (NotificationEventType notificationEvent) => describeEnum(notificationEvent).toLowerCase(),
                )
                .toList()
            : null,
      };

  static const String isOnboardingCompletedKey = 'isOnboardingCompletedKey',
      healthModelKey = 'healthModelKey',
      measuresKey = 'measuresKey',
      dateOfBirthKey = 'dateOfBirthKey',
      cycleEndModelKey = 'cycleEndModelKey',
      notificationEventsKey = 'notificationEventsKey';

  final String id;
  final bool? isOnboardingCompleted;
  final HealthModel? healthModel;
  final UserMeasures? userMeasures;
  final DateTime? dateOfBirth;
  final CycleEndModel? cycleEndModel;
  final List<NotificationEventType>? notificationEvents;

  int? get height => userMeasures?.height;
  int? get weight => userMeasures?.weight;

  SexType? get sex => healthModel?.sex;
  List<HealthIssuesType>? get healthIssues => healthModel?.healthIssues;
  ActivityLevelType? get activenessDuringDay => healthModel?.activenessDuringDay;

  bool get isValidHealthProperties =>
      userMeasures?.height != null &&
      userMeasures?.weight != null &&
      dateOfBirth != null &&
      healthModel?.sex != null &&
      healthModel?.activenessDuringDay != null;
}
