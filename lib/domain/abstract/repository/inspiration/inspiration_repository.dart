import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/domain/models/inspiration/inspiration.dart';

abstract class InspirationRepository {
  Future<BuiltList<Inspiration>?> getInspirations();
}
