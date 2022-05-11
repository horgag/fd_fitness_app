import 'package:flutter/foundation.dart';

enum MealType { breakfast, lunch, dinner, snacks, hydration }

extension MealTypeExt on String {
  MealType toMealType() => MealType.values.firstWhere(
        (MealType element) => describeEnum(element).toLowerCase() == toLowerCase(),
      );
}
