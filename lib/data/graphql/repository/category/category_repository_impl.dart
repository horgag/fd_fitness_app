import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.req.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.var.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.req.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.var.gql.dart';
import 'package:ferry/ferry.dart';

import 'package:fd_fitness_app/data/graphql/exceptions/fd_graphql_exception.dart';
import 'package:fd_fitness_app/data/graphql/schema/schema.schema.gql.dart';
import 'package:fd_fitness_app/data/mappers/mapper.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/category/category_repository.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(this.client)
      : allCategoriesMapper = getIt<Mapper<GAllCategoriesData_categories, Category>>(),
        getCategoryByTypeMapper = getIt<Mapper<GGetCategoryByTypeData_categories, Category>>();

  final TypedLink client;
  final Mapper<GAllCategoriesData_categories, Category> allCategoriesMapper;
  final Mapper<GGetCategoryByTypeData_categories, Category> getCategoryByTypeMapper;

  @override
  Future<BuiltList<Category>?> getAllCategories() => client.request(GAllCategoriesReq()).first.then(
        (OperationResponse<GAllCategoriesData, GAllCategoriesVars> event) {
          return event.hasErrors ? throw FdGraphqlException(event) : event.data?.categories.map(allCategoriesMapper.map).toBuiltList();
        },
      );

  @override
  Future<BuiltList<Category>?> getCategoryByType(CategoryType type) {
    late final GCategoryTitle categoryTitle;
    if (type == CategoryType.testimonials) {
      categoryTitle = GCategoryTitle.Testimonials;
    } else {
      categoryTitle = GCategoryTitle.Exercises;
    }
    return client.request(GGetCategoryByTypeReq((GGetCategoryByTypeReqBuilder b) => b..vars.categoryTitle = categoryTitle)).first.then(
      (OperationResponse<GGetCategoryByTypeData, GGetCategoryByTypeVars> event) {
        return event.hasErrors ? throw FdGraphqlException(event) : event.data?.categories.map(getCategoryByTypeMapper.map).toBuiltList();
      },
    );
  }
}
