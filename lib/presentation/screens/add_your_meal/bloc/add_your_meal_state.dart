part of 'add_your_meal_bloc.dart';

class AddYourMealState extends Equatable {
  const AddYourMealState();

  @override
  List<Object?> get props => <Object?>[];
}

class AddYourMealInitial extends AddYourMealState {
  const AddYourMealInitial();
}

class ResultMealState extends AddYourMealState {
  const ResultMealState(this.mealsContainer);
  final MealsContainer mealsContainer;

  @override
  List<Object> get props => <Object>[mealsContainer];
}

class ErrorLoadingUserOccurredState extends AddYourMealState {
  const ErrorLoadingUserOccurredState(this.mealsContainer);
  final MealsContainer? mealsContainer;

  @override
  List<Object?> get props => <Object?>[mealsContainer];
}

class LoadingState extends AddYourMealState {
  const LoadingState(this.mealsContainer);
  final MealsContainer? mealsContainer;

  @override
  List<Object?> get props => <Object?>[mealsContainer];
}
