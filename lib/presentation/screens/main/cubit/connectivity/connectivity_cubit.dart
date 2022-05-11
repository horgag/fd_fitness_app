import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:flutter/services.dart';

part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit()
      : _connectivity = Connectivity(),
        super(Connected());

  final Connectivity _connectivity;
  late final StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  Future<void> close() async {
    _connectivitySubscription.cancel();
    super.close();
  }

  Future<void> initConnectivity() async {
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(connectivityChanged);
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      final ConnectivityResult result = await _connectivity.checkConnectivity();
      connectivityChanged(result);
    } on PlatformException catch (e) {
      Log().e(e);
    }
  }

  void connectivityChanged(ConnectivityResult result) {
    final bool isNoInternet = result == ConnectivityResult.none;
    emit(isNoInternet ? NotConnected() : Connected());
  }
}
