import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:fd_fitness_app/data/firebase/mixins/firestore_mixin.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/user_model/cycle_end/cycle_end_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/health_model.dart';
import 'package:fd_fitness_app/domain/models/user_model/measures/user_measures.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

class UserRepositoryImpl with FirestoreMixin implements UserRepository {
  @override
  String collectionKey() => 'users';

  @override
  Future<void> setUser(UserModel user) async {
    return collectionRef
        .doc(user.id)
        .set(user.toJson())
        .then((dynamic value) => Log().d('User is saved.'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  @override
  Future<bool> removeUser(String userId) async {
    final UserModel? userModel = await getUser(userId);
    if (userModel != null) {
      return collectionRef.doc(userId).delete().then((_) {
        Log().d('User record was deleted.');
        return true;
      }).catchError(
        (Object error) {
          Log().e('Failed deleting user\'s record: $error');
          return false;
        },
      );
    }
    return false;
  }

  @override
  Future<UserModel?> getUser(String id) async {
    return collectionRef
        .doc(id)
        .get()
        .then((DocumentSnapshot<Map<String, dynamic>> value) => value.data() != null ? UserModel.fromJson(id, value.data()!) : null)
        .catchError((Object error) {
      Log().e('Failed: $error');
      return null;
    });
  }

  @override
  Future<void> saveLastAppLaunch(String userId) {
    return collectionRef
        .doc(userId)
        .update(
          <String, dynamic>{
            UserModel.cycleEndModelKey: CycleEndModel(DateTime.now()).toJson(),
          },
        )
        .then((dynamic value) => Log().d('Cycle end is updated.'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  @override
  Future<CycleEndModel?> lastAppLaunchDate(String userId) {
    return collectionRef
        .doc(userId)
        .get()
        .then(
          (DocumentSnapshot<Map<String, dynamic>> value) =>
              value.data() != null ? UserModel.fromJson(userId, value.data()!).cycleEndModel : null,
        )
        .catchError(
      (Object error) {
        Log().e('Failed: $error');
        return null;
      },
    );
  }

  @override
  Future<void> updateMeasures(String id, UserMeasures measures) {
    return collectionRef
        .doc(id)
        .update(
          <String, dynamic>{
            UserModel.measuresKey: measures.toJson(),
          },
        )
        .then((dynamic value) => Log().d('User model is updated.'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  @override
  Future<void> updateUserHealthModel(String id, HealthModel healthModel) {
    return collectionRef
        .doc(id)
        .update(
          <String, dynamic>{
            UserModel.healthModelKey: healthModel.toJson(),
          },
        )
        .then((dynamic value) => Log().d('User model is updated.'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }
}
