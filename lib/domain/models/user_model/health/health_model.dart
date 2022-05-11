import 'package:flutter/foundation.dart';

import 'activity_level_type.dart';
import 'health_issues_type.dart';
import 'sex_type.dart';

class HealthModel {
  const HealthModel({this.sex, this.healthIssues, this.activenessDuringDay});

  HealthModel.copy(
    HealthModel copy, {
    SexType? sex,
    List<HealthIssuesType>? healthIssues,
    ActivityLevelType? activenessDuringDay,
  })  : sex = sex ?? copy.sex,
        healthIssues = healthIssues ?? copy.healthIssues,
        activenessDuringDay = activenessDuringDay ?? copy.activenessDuringDay;

  HealthModel.fromJson(Map<String, dynamic> json)
      : sex = (json[sexKey] as String?)?.toSexType(),
        healthIssues = json[healthIssuesKey] != null ? List<String>.from(json[healthIssuesKey]).toHealthIssues() : null,
        activenessDuringDay = (json[activenessDuringDayKey] as String?)?.toActivenessDuringDayType();

  Map<String, dynamic> toJson() => <String, dynamic>{
        sexKey: sex != null ? describeEnum(sex!).toLowerCase() : null,
        healthIssuesKey: healthIssues?.isNotEmpty ?? false
            ? healthIssues!
                .map(
                  (HealthIssuesType healthIssue) => describeEnum(healthIssue).toLowerCase(),
                )
                .toList()
            : null,
        activenessDuringDayKey: activenessDuringDay != null ? describeEnum(activenessDuringDay!).toLowerCase() : null,
      };

  final SexType? sex;
  final List<HealthIssuesType>? healthIssues;
  final ActivityLevelType? activenessDuringDay;

  static const String sexKey = 'sexKey', healthIssuesKey = 'healthIssuesKey', activenessDuringDayKey = 'activenessDuringDayKey';
}
