import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:flutter/foundation.dart';

import 'measure.dart';
import 'nutrients.dart';
import 'servings.dart';

class Food extends Equatable {
  const Food({
    this.id,
    this.label,
    this.image,
    this.category,
    this.servings,
    this.mealType,
    this.categoryLabel,
    this.isGlassOfWater = false,
    this.nutrients,
    this.measures,
  });

  Food.fromGlassesOfWater(int glassesOfWater)
      : this(
          id: 'food',
          label: describeEnum(MealType.hydration).toLowerCase(),
          mealType: MealType.hydration,
          servings: Servings.waterGlass(glassesOfWater),
          isGlassOfWater: true,
        );

  Food.copyWith(
    Food copy, {
    String? id,
    String? label,
    String? image,
    String? category,
    String? categoryLabel,
    bool? isGlassesOfWater,
    MealType? mealType,
    Servings? servings,
    Nutrients? nutrients,
    Measures? measures,
  })  : id = id ?? copy.id,
        label = label ?? copy.label,
        image = image ?? copy.image,
        category = category ?? copy.category,
        isGlassOfWater = isGlassesOfWater ?? copy.isGlassOfWater,
        categoryLabel = categoryLabel ?? copy.categoryLabel,
        mealType = mealType ?? copy.mealType,
        nutrients = nutrients ?? copy.nutrients,
        measures = measures ?? copy.measures,
        servings = servings ?? copy.servings;

  Food.fromJson(Map<String, dynamic> json)
      : id = json[idKey],
        label = json[labelKey],
        image = json[imageKey],
        category = json[categoryKey],
        categoryLabel = json[categoryLabelKey],
        mealType = json[mealTypeKey] is String ? (json[mealTypeKey] as String).toMealType() : null,
        nutrients = json[nutrientsKey] != null ? Nutrients.fromJson(json[nutrientsKey]) : null,
        measures = json[measuresKey] != null ? Measures.fromJson(json[measuresKey]) : null,
        isGlassOfWater = json[isGlassOfWaterKey] ?? false,
        servings = json[servingsKey] != null ? Servings.fromJson(json[servingsKey]) : null;

  final String? id, label, image, category, categoryLabel;
  final MealType? mealType;
  final Nutrients? nutrients;
  final Measures? measures;
  final Servings? servings;

  /// 1 cup of water is aprx. 250ml
  final bool isGlassOfWater;

  static const int _defaultWeight = 100;

  Nutrients? get nutrientsPerOneGram => nutrients == null
      ? null
      : Nutrients(
          kcal: nutrients!.kcal / _defaultWeight,
          carbs: nutrients!.carbs / _defaultWeight,
          protein: nutrients!.protein / _defaultWeight,
          fat: nutrients!.fat / _defaultWeight,
        );

  static const String idKey = 'idKey',
      labelKey = 'labelKey',
      imageKey = 'imageKey',
      categoryKey = 'categoryKey',
      categoryLabelKey = 'categoryLabelKey',
      mealTypeKey = 'mealTypeKey',
      nutrientsKey = 'nutrientsKey',
      measuresKey = 'measuresKey',
      isGlassOfWaterKey = 'isGlassOfWaterKey',
      servingsKey = 'servingsKey';

  Map<String, dynamic> toJson() => <String, dynamic>{
        idKey: id,
        labelKey: label,
        imageKey: image,
        categoryKey: category,
        categoryLabelKey: categoryLabel,
        mealTypeKey: mealType != null ? describeEnum(mealType!).toLowerCase() : null,
        nutrientsKey: nutrients?.toJson(),
        measuresKey: measures?.toJson(),
        isGlassOfWaterKey: isGlassOfWater,
        servingsKey: servings?.toJson(),
      };

  @override
  List<Object?> get props => <Object?>[
        id,
        label,
        image,
        category,
        categoryLabel,
        mealType,
        nutrients,
        measures,
        servings,
        isGlassOfWater,
      ];
}
