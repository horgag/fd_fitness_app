import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

enum HealthIssuesType { thyroidCondition, irritableBowelSyndrom, abnormalBloodPressure, diabetes, none }

extension HealthIssuesConverter on List<String>? {
  List<HealthIssuesType>? toHealthIssues() {
    if (this == null) return null;
    return this!.map((String el) => el.toHealthIssue()!).toList();
  }
}

extension HealthIssueConverter on String? {
  HealthIssuesType? toHealthIssue() {
    if (this == null) return null;
    return HealthIssuesType.values.firstWhereOrNull(
      (HealthIssuesType healthIssuesType) => describeEnum(healthIssuesType).toLowerCase() == this!.toLowerCase(),
    );
  }
}
