part of 'input_food_bloc.dart';

abstract class BaseInputFoodResultState extends Equatable {
  const BaseInputFoodResultState({this.foodList = const <Food>[], this.sourceType = FoodSourceType.local, this.nextLink});

  final List<Food> foodList;
  final String? nextLink;
  final FoodSourceType sourceType;

  bool get hasNext => nextLink != null;

  @override
  List<Object?> get props => <Object?>[foodList, nextLink, sourceType];
}

class SearchResultState extends BaseInputFoodResultState {
  const SearchResultState(
    List<Food> foodList, {
    String? nextLink,
    FoodSourceType sourceType = FoodSourceType.local,
  }) : super(
          foodList: foodList,
          nextLink: nextLink,
          sourceType: sourceType,
        );

  const SearchResultState.empty() : super();
}

class ErrorResultState extends BaseInputFoodResultState {
  const ErrorResultState(
    List<Food> foodList, {
    String? nextLink,
    FoodSourceType sourceType = FoodSourceType.local,
  }) : super(
          foodList: foodList,
          nextLink: nextLink,
          sourceType: sourceType,
        );

  ErrorResultState.fromFoodSearchResul(BaseInputFoodResultState copy)
      : super(
          foodList: copy.foodList,
          nextLink: copy.nextLink,
          sourceType: copy.sourceType,
        );
}

class LoadingState extends BaseInputFoodResultState {
  const LoadingState(
    List<Food> foodList, {
    String? nextLink,
    FoodSourceType sourceType = FoodSourceType.local,
  }) : super(
          foodList: foodList,
          nextLink: nextLink,
          sourceType: sourceType,
        );

  LoadingState.fromFoodSearchResult(BaseInputFoodResultState copy)
      : super(
          foodList: copy.foodList,
          nextLink: copy.nextLink,
          sourceType: copy.sourceType,
        );
}

class LoadingMoreState extends BaseInputFoodResultState {
  const LoadingMoreState(
    List<Food> foodList, {
    String? nextLink,
    FoodSourceType sourceType = FoodSourceType.local,
  }) : super(
          foodList: foodList,
          nextLink: nextLink,
          sourceType: sourceType,
        );

  LoadingMoreState.fromFoodSearchResult(BaseInputFoodResultState copy)
      : super(
          foodList: copy.foodList,
          nextLink: copy.nextLink,
          sourceType: copy.sourceType,
        );
}
