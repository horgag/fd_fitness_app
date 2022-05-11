import 'package:equatable/equatable.dart';

class ProgressState extends Equatable {
  const ProgressState();

  @override
  List<Object?> get props => <Object?>[];
}

class LoadingProgressState extends ProgressState {}

class LoadedProgressState extends ProgressState {
  const LoadedProgressState({required this.averageCalories, required this.timesSlippedUp, required this.waterConsumed});

  final int averageCalories;
  final int timesSlippedUp;
  final Map<int, int> waterConsumed;

  @override
  List<Object?> get props => <Object?>[averageCalories, timesSlippedUp, waterConsumed];
}

class ErrorLoadingProgress extends ProgressState {}