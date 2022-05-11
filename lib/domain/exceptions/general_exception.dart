import 'base_fd_exception.dart';

class GeneralException extends BaseFdException {
  const GeneralException([this.error]);
  final Object? error;

  @override
  List<Object?> get props => <Object?>[error];

  @override
  bool? get stringify => true;
}
