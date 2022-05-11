import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.data.gql.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';

import '../mapper.dart';

class AssetByFileNameMapper implements Mapper<GGetAssetByFileNameData_assets, AssetModel> {
  @override
  AssetModel map(GGetAssetByFileNameData_assets from) => AssetModel(
        id: from.id,
        url: from.url,
        fileName: from.fileName,
        size: from.size,
        mimeType: from.mimeType,
      );
}
