import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

class ServingSize {
  const ServingSize({this.label, required this.weight});

  ServingSize.fromJson(Map<String, dynamic> json)
      : weight = json[weightKey] ?? 0.0,
        label = json[labelKey];

  Map<String, dynamic> toJson() => <String, dynamic>{
        weightKey: weight,
        labelKey: label,
      };

  /// Weight in grams
  final double weight;
  final String? label;

  static const String weightKey = 'weightKey', labelKey = 'labelKey';

  static List<ServingSize> defaultServingsSizeList([double weight = 10]) {
    return <ServingSize>[
      ServingSize(
        weight: weight * 0.75,
        label: describeEnum(ServingSizeType.small).toLowerCase(),
      ),
      ServingSize(
        weight: weight,
        label: describeEnum(ServingSizeType.medium).toLowerCase(),
      ),
      ServingSize(
        weight: weight * 1.5,
        label: describeEnum(ServingSizeType.large).toLowerCase(),
      ),
    ];
  }
}

enum ServingSizeType { small, medium, large }

extension ServingSizeTypeExt on String? {
  ServingSizeType? toServingSizeType() => ServingSizeType.values.firstWhereOrNull(
        (ServingSizeType element) => describeEnum(element).toLowerCase() == this?.toLowerCase(),
      );
}
