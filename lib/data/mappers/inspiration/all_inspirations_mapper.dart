// GAllInspirationsData_inspirationItems

import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.data.gql.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/domain/models/inspiration/inspiration.dart';

import '../mapper.dart';

class AllInspirationsMapper implements Mapper<GAllInspirationsData_inspirationItems, Inspiration> {
  
  @override
  Inspiration map(GAllInspirationsData_inspirationItems from) => Inspiration(
        from.id,
        title: from.title,
        image: AssetModel(
          id: from.mainImage?.id,
          url: from.mainImage?.url,
          fileName: from.mainImage?.fileName,
        ),
        video: AssetModel(
          id: from.video?.id,
          url: from.video?.url,
          fileName: from.video?.fileName,
          size: from.video?.size,
          mimeType: from.video?.mimeType,
        ),
      );
}
