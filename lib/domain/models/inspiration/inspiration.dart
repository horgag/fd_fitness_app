import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';

class Inspiration {
  const Inspiration(this.id, {this.title, this.image, this.video});
  final String id;
  final String? title;
  final AssetModel? image;
  final AssetModel? video;
}
