part of 'introduction_bloc.dart';

abstract class IntroductionEvent extends Equatable {
  const IntroductionEvent();

  @override
  List<Object?> get props => <Object?>[];
}

class GetAllInspirationsEvent extends IntroductionEvent {
  const GetAllInspirationsEvent();
}

class GetWelcomeVideoEvent extends IntroductionEvent {
  const GetWelcomeVideoEvent();
}
