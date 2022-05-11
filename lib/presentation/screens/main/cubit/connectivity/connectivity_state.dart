part of 'connectivity_cubit.dart';

abstract class ConnectivityState extends Equatable {
  const ConnectivityState();

  @override
  List<Object> get props => <Object>[];
}

class Connected extends ConnectivityState {}

class NotConnected extends ConnectivityState {}