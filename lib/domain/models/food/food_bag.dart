import 'package:collection/collection.dart';

import 'food.dart';

class FoodBag {
  const FoodBag({this.foodList = const <Food>[], this.nextPageLink});

  FoodBag.fromJson(Map<String, dynamic> json)
      : foodList = json[foodListKey] != null
            ? json[foodListKey]
                .map(
                  (dynamic json) => Food.fromJson(json),
                )
                .toList()
            : <Food>[],
        nextPageLink = json[nextPageLinkKey];

  static const String foodListKey = 'foodListKey', nextPageLinkKey = 'nextPageLinkKey';

  final List<Food> foodList;
  final String? nextPageLink;

  int get length => foodList.length;

  bool get isNotEmpty => foodList.isNotEmpty;

  int get glassesOfWater => !isNotEmpty ? 0 : foodList.firstWhereOrNull((Food el) => el.isGlassOfWater)?.servings?.number ?? 0;

  Map<String, dynamic> toJson() => <String, dynamic>{
        foodListKey: foodList.map((Food e) => e.toJson()).toList(),
        nextPageLinkKey: nextPageLink,
      };
}
