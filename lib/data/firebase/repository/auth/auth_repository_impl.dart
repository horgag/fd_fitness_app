import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/exceptions/auth/auth_codes.dart';
import 'package:fd_fitness_app/domain/exceptions/auth/auth_exceptions.dart';
import 'package:fd_fitness_app/domain/exceptions/general_exception.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/util/crypto/nonce_generator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  static const String _oAuthProviderApple = 'apple.com';

  @override
  Future<AuthModel> authModel() async {
    return AuthModel.fromUser(_auth.currentUser);
  }

  @override
  Future<AuthModel> emailAuth({required String email, required String password, bool isRegistration = false}) async {
    if (isRegistration) {
      return _emailSignUp(
        email: email,
        password: password,
      );
    } else {
      return _emailSignIn(
        email: email,
        password: password,
      );
    }
  }

  Future<AuthModel> _emailSignUp({required String email, required String password}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return AuthModel.fromUserCredentials(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthErrorCodes.weakPassword) {
        throw const WeakPasswordException();
      } else if (e.code == AuthErrorCodes.emailAlreadyInUse) {
        throw const EmailAlreadyInUseException();
      }
    } catch (e) {
      throw GeneralException(e);
    }
    throw const GeneralException();
  }

  Future<AuthModel> _emailSignIn({required String email, required String password}) async {
    try {
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return AuthModel.fromUserCredentials(userCredential);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthErrorCodes.userNotFound) {
        throw const UserNotFoundException();
      } else if (e.code == AuthErrorCodes.wrongPassword) {
        throw const WrongPasswordException();
      }
    } catch (e) {
      throw GeneralException(e);
    }
    throw const GeneralException();
  }

  @override
  Future<void> resetPassword({required String email}) {
    final Future<void> userCredential = _auth.sendPasswordResetEmail(
      email: email,
    );
    return userCredential;
  }

  @override
  Future<AuthModel> googleAuth() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      // Create a new credential
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      return AuthModel.fromUserCredentials(userCredential);
    } catch (e) {
      throw GeneralException(e);
    }
  }

  @override
  Future<AuthModel> appleAuth() async {
    try {
      // To prevent replay attacks with the credential returned from Apple, we
      // include a nonce in the credential request. When signing in with
      // Firebase, the nonce in the id token returned by Apple, is expected to
      // match the sha256 hash of `rawNonce`.
      final String rawNonce = NonceGenerator.generateNonce();
      final String nonce = NonceGenerator.sha256ofString(rawNonce);

      // Request credential for the currently signed in Apple account.
      final AuthorizationCredentialAppleID appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: <AppleIDAuthorizationScopes>[
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        nonce: nonce,
      );

      // Create an `OAuthCredential` from the credential returned by Apple.
      final OAuthCredential oauthCredential = OAuthProvider(_oAuthProviderApple).credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );

      // Sign in the user with Firebase. If the nonce we generated earlier does
      // not match the nonce in `appleCredential.identityToken`, sign in will fail.
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(oauthCredential);
      return AuthModel.fromUserCredentials(userCredential);
    } catch (e) {
      throw const GeneralException();
    }
  }

  @override
  Future<void> signOut() {
    return _auth.signOut();
  }
}
