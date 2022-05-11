part of 'my_food_list_cubit.dart';

abstract class BaseMyFoodListState extends Equatable {
  const BaseMyFoodListState(this.foodList, {this.wasUpdated = false});

  final List<Food> foodList;
  final bool wasUpdated;

  @override
  List<Object> get props => <Object>[foodList, wasUpdated];
}

class MyFoodListState extends BaseMyFoodListState {
  const MyFoodListState(List<Food> foodList, {bool wasUpdated = false}) : super(foodList, wasUpdated: wasUpdated);
  
  @override
  List<Object> get props => <Object>[foodList, wasUpdated];
}
