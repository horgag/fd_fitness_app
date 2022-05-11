import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';

abstract class AuthRepository {
  Future<AuthModel> authModel();

  Future<AuthModel> emailAuth({required String email, required String password, bool isRegistration = false});

  Future<AuthModel> googleAuth();

  Future<AuthModel> appleAuth();

  Future<void> resetPassword({required String email});

  Future<void> signOut();
}
