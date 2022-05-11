import 'package:fd_fitness_app/presentation/screens/auth/auth_screen.dart';

class AuthDataModel {
  const AuthDataModel({
    this.authType = AuthType.signUp,
    this.receiveEmailNotifications,
    this.email,
    this.password,
  });

  final AuthType authType;
  final bool? receiveEmailNotifications;
  final String? email, password;
}
