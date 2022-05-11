import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

enum SexType { male, femail }

extension SexTypeConverter on String? {
  SexType? toSexType() {
    if (this == null) return null;
    return SexType.values.firstWhereOrNull((SexType sexType) => describeEnum(sexType).toLowerCase() == this!.toLowerCase());
  }
}

extension SexTypeConverter1 on String {
  SexType? toSexType() {
    return SexType.values.firstWhereOrNull((SexType sexType) => describeEnum(sexType).toLowerCase() == toLowerCase());
  }
}
