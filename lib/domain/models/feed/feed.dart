
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';

class Feed {
  const Feed(this.id, {this.title, this.video, this.image, this.subtitle, this.description, this.mainContent});
  final String id;
  final String? title, subtitle, description, mainContent;
  final AssetModel? image;
  final AssetModel? video;
}
