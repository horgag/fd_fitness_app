import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthModel extends Equatable {
  const AuthModel({this.userCredential, this.userModel});

  const AuthModel.fromUserCredentials(this.userCredential) : userModel = null;

  const AuthModel.fromUser(this.userModel) : userCredential = null;

  final UserCredential? userCredential;
  final User? userModel;

  bool get isUserLogged => user != null;

  bool? get isNew => userCredential?.additionalUserInfo?.isNewUser;

  User? get user => userCredential?.user ?? userModel;

  String? get userId => user?.uid;

  @override
  List<Object?> get props => <Object?>[userCredential, user];

  @override
  bool? get stringify => true;
}
