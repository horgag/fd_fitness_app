import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.data.gql.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/domain/models/feed/feed.dart';

import '../mapper.dart';

class FeedByCategoryIdMapper implements Mapper<GFeedByCategoryIdData_feedItems, Feed> {
  @override
  Feed map(GFeedByCategoryIdData_feedItems from) => Feed(
        from.id,
        title: from.title,
        subtitle: from.subtitle,
        description: from.description,
        mainContent: from.mainContent,
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
