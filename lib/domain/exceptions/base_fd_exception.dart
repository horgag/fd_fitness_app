import 'package:equatable/equatable.dart';

abstract class BaseFdException extends Equatable implements Exception {
  const BaseFdException();

  @override
  List<Object?> get props => <Object?>[];
}
