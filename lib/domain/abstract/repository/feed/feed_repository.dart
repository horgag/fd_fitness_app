import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/domain/models/feed/feed.dart';

/// Interface for FeedRepository
abstract class FeedRepository {
  Future<BuiltList<Feed>?> getAllFeed();
  Future<BuiltList<Feed>?> getFeedByCategoryId(String id);
}
