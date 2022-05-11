import 'package:equatable/equatable.dart';

import 'nutrients.dart';
import 'serving_sizes.dart';

class ParsedNet {
  ParsedNet({this.food});

  ParsedNet.fromJson(Map<String, dynamic> json) : food = json['food'] != null ? FoodNet.fromJson(json['food']) : null;

  final FoodNet? food;
}

class FoodNet extends Equatable {
  const FoodNet({
    this.foodId,
    this.label,
    this.nutrients,
    this.category,
    this.categoryLabel,
    this.image,
    this.brand,
    this.foodContentsLabel,
    this.servingSizes = const <ServingSizesNet>[],
    this.servingsPerContainer,
  });

  FoodNet.fromJson(Map<String, dynamic> json)
      : foodId = json['foodId'],
        label = json['label'],
        nutrients = json['nutrients'] != null ? NutrientsNet.fromJson(json['nutrients']) : null,
        category = json['category'],
        categoryLabel = json['categoryLabel'],
        image = json['image'],
        brand = json['brand'],
        foodContentsLabel = json['foodContentsLabel'],
        servingsPerContainer = json['servingsPerContainer'],
        servingSizes = json['servingSizes'] != null
            ? List<Map<String, dynamic>>.from(json['servingSizes'])
                .map<ServingSizesNet>(
                  (Map<String, dynamic> e) => ServingSizesNet.fromJson(e),
                )
                .toList()
            : <ServingSizesNet>[];

  final String? foodId, label;
  final NutrientsNet? nutrients;
  final String? category, categoryLabel, image, brand, foodContentsLabel;
  final List<ServingSizesNet> servingSizes;
  final double? servingsPerContainer;

  @override
  List<Object?> get props => <Object?>[
        foodId,
        label,
        nutrients,
        category,
        categoryLabel,
        image,
        brand,
        foodContentsLabel,
        servingSizes,
        servingsPerContainer,
      ];

  Map<String, dynamic> toJson() => <String, dynamic>{
        'foodId': foodId,
        'label': label,
        'nutrients': nutrients?.toJson(),
        'category': category,
        'categoryLabel': categoryLabel,
        'image': image,
        'brand': brand,
        'foodContentsLabel': foodContentsLabel,
        'servingsPerContainer': servingsPerContainer,
        'servingSizes': servingSizes.map((ServingSizesNet e) => e.toJson()).toList(),
      };
}
