import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';

class AssetModel extends Equatable {
  const AssetModel({
    this.id,
    this.url,
    this.fileName,
    this.mimeType,
    this.size,
  });
  final String? id, url, fileName, mimeType;
  final double? size;

  static const String imageMimeKey = 'image', videoMimeKey = 'video';

  @override
  List<Object?> get props => <Object?>[id, url, fileName, mimeType, size];

  @override
  bool? get stringify => true;
}

extension AssetModelList on BuiltList<AssetModel>? {
  AssetModel? assetByType(String mimeType) {
    final BuiltList<AssetModel>? result = this?.where((AssetModel asset) => asset.mimeType?.contains(mimeType) ?? false).toBuiltList();
    if (result?.isNotEmpty ?? false) {
      return result!.first;
    }
  }
}
