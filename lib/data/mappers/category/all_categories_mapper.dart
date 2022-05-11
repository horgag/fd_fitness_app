import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.data.gql.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';

import '../mapper.dart';

class AllCategoriesMapper implements Mapper<GAllCategoriesData_categories, Category> {
  @override
  Category map(GAllCategoriesData_categories from) => Category(
        id: from.id,
        title: from.title!,
        categoryTitle: from.categoryTitle!.name.toCategoryType(),
        image: AssetModel(
          id: from.mainImage?.id,
          url: from.mainImage?.url,
          fileName: from.mainImage?.fileName,
        ),
      );
}
