import '../base_fd_exception.dart';

class EmailAlreadyInUseException extends BaseFdException {
  const EmailAlreadyInUseException();
}

class UserNotFoundException extends BaseFdException {
  const UserNotFoundException();
}

class WeakPasswordException extends BaseFdException {
  const WeakPasswordException();
}

class WrongPasswordException extends BaseFdException {
  const WrongPasswordException();
}
