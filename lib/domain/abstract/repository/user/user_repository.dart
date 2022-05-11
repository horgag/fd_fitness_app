import 'package:fd_fitness_app/domain/models/user_model/cycle_end/cycle_end_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/measures/user_measures.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';

abstract class UserRepository {
  Future<void> updateMeasures(String id, UserMeasures measures);
  Future<void> updateUserHealthModel(String id, HealthModel healthModel);
  Future<void> setUser(UserModel user);
  Future<bool> removeUser(String userId);
  Future<UserModel?> getUser(String userId);
  Future<void> saveLastAppLaunch(String userId);
  Future<CycleEndModel?> lastAppLaunchDate(String userId);
}
