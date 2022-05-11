import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.data.gql.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';

import '../mapper.dart';

class GetCategoryByTypeMapper implements Mapper<GGetCategoryByTypeData_categories, Category> {
  @override
  Category map(GGetCategoryByTypeData_categories from) => Category(
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
