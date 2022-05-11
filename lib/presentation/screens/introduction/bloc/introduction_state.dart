part of 'introduction_bloc.dart';

abstract class IntroductionState extends Equatable {
  const IntroductionState();

  @override
  List<Object?> get props => <Object?>[];
}

class IntroductionInitial extends IntroductionState {}

class AllInspirationsResultState extends IntroductionState {
  const AllInspirationsResultState(this.inspirations);
  final BuiltList<Inspiration>? inspirations;

  @override
  List<Object?> get props => <Object?>[inspirations];
}

class WelcomeVideoResultState extends IntroductionState {
  const WelcomeVideoResultState(this.assets);
  final BuiltList<AssetModel>? assets;

  @override
  List<Object?> get props => <Object?>[assets];
}

class ErrorState extends IntroductionState {
  const ErrorState();
}
