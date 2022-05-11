import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/asset/asset_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/inspiration/inspiration_repository.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/domain/models/inspiration/inspiration.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'introduction_event.dart';
part 'introduction_state.dart';

class IntroductionBloc extends Bloc<IntroductionEvent, IntroductionState> {
  IntroductionBloc(this._inspirationRepository, this._assetRepository) : super(IntroductionInitial());

  final InspirationRepository _inspirationRepository;
  final AssetRepository _assetRepository;

  @override
  Stream<IntroductionState> mapEventToState(IntroductionEvent event) async* {
    if (event is GetAllInspirationsEvent) {
      yield* _getAllInspirations();
    } else if (event is GetWelcomeVideoEvent) {
      yield* _getWelcomeAssets();
    }
  }

  Stream<IntroductionState> _getAllInspirations() async* {
    yield await _inspirationRepository.getInspirations().then(_listenInspiration).catchError(_handleError);
  }

  Stream<IntroductionState> _getWelcomeAssets() async* {
    yield await _assetRepository.getWelcomeAssets().then(_listenWelcomeVideo).catchError(_handleError);
  }

  Future<IntroductionState> _listenInspiration(BuiltList<Inspiration>? result) async => AllInspirationsResultState(result);

  Future<IntroductionState> _listenWelcomeVideo(BuiltList<AssetModel>? result) async => WelcomeVideoResultState(result);

  Future<IntroductionState> _handleError(Object error) async {
    Log().e('Failed fetching feed $error');
    return const ErrorState();
  }
}
