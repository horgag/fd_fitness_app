import 'servings_size.dart';

class Measures {
  Measures({required this.label, required this.weight, required this.servingSize});

  Measures.fromJson(Map<String, dynamic> json)
      : weight = json[weightKey] ?? 0.0,
        label = json[labelKey] ?? '',
        servingSize = json[servingSizeKey] != null
            ? json[servingSizeKey]
                .map<ServingSize>(
                  (dynamic j) => ServingSize.fromJson(j),
                )
                .toList()
            : ServingSize.defaultServingsSizeList();

  Map<String, dynamic> toJson() => <String, dynamic>{
        weightKey: weight,
        labelKey: label,
        servingSizeKey: servingSize.map((ServingSize e) => e.toJson()).toList(),
      };

  /// Weight in grams that represents medium sized food
  final double weight;
  final String label;
  final List<ServingSize> servingSize;

  static const String weightKey = 'weightKey', labelKey = 'labelKey', servingSizeKey = 'servingSizeKey';
}
