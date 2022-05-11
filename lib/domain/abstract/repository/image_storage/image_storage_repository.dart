abstract class ImageStorageRepository {
  Future<bool> uploadImage(String userId, String imagePath, [String? fileName]);

  Future<List<String>> fetchImageUrls(String userId);

  Future<void> deleteImage(String url);
}
