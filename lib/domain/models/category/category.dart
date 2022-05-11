import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:flutter/foundation.dart';

class Category {
  const Category({
    required this.id,
    required this.title,
    required this.categoryTitle,
    this.image,
  });
  final String id, title;
  final AssetModel? image;
  final CategoryType categoryTitle;
}

enum CategoryType { exercises, testimonials }

extension CategoryTypeExt on String? {
  CategoryType toCategoryType([CategoryType defaultCategoryType = CategoryType.exercises]) => this == null
      ? defaultCategoryType
      : CategoryType.values.firstWhere(
          (CategoryType element) => describeEnum(element).toLowerCase() == this!.toLowerCase(),
          orElse: () => defaultCategoryType,
        );
}
