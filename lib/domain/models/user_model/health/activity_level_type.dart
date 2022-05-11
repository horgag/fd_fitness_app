import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

enum ActivityLevelType { bad, moderate, high }

extension ActivenessDuringDayTypeConverter on String? {
  ActivityLevelType? toActivenessDuringDayType() {
    if (this == null) return null;
    return ActivityLevelType.values.firstWhereOrNull((ActivityLevelType activenessDuringDayType) => describeEnum(activenessDuringDayType).toLowerCase() == this!.toLowerCase());
  }
}
