part of 'add_your_meal_bloc.dart';

abstract class AddYourMealEvent extends Equatable {
  const AddYourMealEvent();

  @override
  List<Object> get props => <Object>[];
}

class LoadYourMealsEvent extends AddYourMealEvent {
  const LoadYourMealsEvent();
}

class UpdateCaloriesEvent extends AddYourMealEvent {
  const UpdateCaloriesEvent(this.customCalories);

  final int customCalories;

  @override
  List<Object> get props => <Object>[];
}
