import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';

abstract class CategoryRepository {
  Future<BuiltList<Category>?> getAllCategories();
  Future<BuiltList<Category>?> getCategoryByType(CategoryType type);
}
