part of 'add_food_cubit.dart';

abstract class AddFoodState extends Equatable {
  const AddFoodState({
    this.servingSizeValue,
    this.numberOfServingsValue,
    this.servingSizeList,
    this.nutrients,
  });

  final double? servingSizeValue, numberOfServingsValue;
  final List<ServingSize>? servingSizeList;
  final Nutrients? nutrients;

  bool get isValid => servingSizeValue != null && numberOfServingsValue != null && servingSizeList != null && nutrients != null;

  int? get servingSizeIndex => servingSizeValue?.toInt();
  int? get numberOfServingsIndex => numberOfServingsValue?.toInt();

  @override
  List<Object?> get props => <Object?>[
        servingSizeValue,
        numberOfServingsValue,
        servingSizeList,
        nutrients,
      ];
}

class AddFoodInitial extends AddFoodState {
  const AddFoodInitial({
    double? servingSizeValue,
    double? numberOfServingsValue,
    List<ServingSize>? servingSizeList,
    Nutrients? nutrients,
  }) : super(
          servingSizeValue: servingSizeValue,
          numberOfServingsValue: numberOfServingsValue,
          servingSizeList: servingSizeList,
          nutrients: nutrients,
        );
}

class SucceedAddingFood extends AddFoodState {
  const SucceedAddingFood({
    double? servingSizeValue,
    double? numberOfServingsValue,
    List<ServingSize>? servingSizeList,
    Nutrients? nutrients,
  }) : super(
          servingSizeValue: servingSizeValue,
          numberOfServingsValue: numberOfServingsValue,
          servingSizeList: servingSizeList,
          nutrients: nutrients,
        );

  SucceedAddingFood.copy(AddFoodState state)
      : super(
          servingSizeValue: state.servingSizeValue,
          numberOfServingsValue: state.numberOfServingsValue,
          servingSizeList: state.servingSizeList,
          nutrients: state.nutrients,
        );
}
