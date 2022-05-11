part of 'input_food_bloc.dart';

abstract class BaseInputFoodEvent extends Equatable {
  const BaseInputFoodEvent();

  @override
  List<Object?> get props => <Object>[];
}

class LoadRecentFoodEvent extends BaseInputFoodEvent {
  const LoadRecentFoodEvent();
}

class InputFoodEvent extends BaseInputFoodEvent {
  const InputFoodEvent(this.query, [this.nextLink]);
  final String query;
  final String? nextLink;

  @override
  List<Object?> get props => <Object?>[query, nextLink];
}

class SearchFoodEvent extends InputFoodEvent {
  const SearchFoodEvent(String query) : super(query);
}

class RecentSearchFoodEvent extends InputFoodEvent {
  const RecentSearchFoodEvent(String query) : super(query);
}

class SearchForMoreFoodEvent extends InputFoodEvent {
  const SearchForMoreFoodEvent(String query, String nextLink) : super(query, nextLink);
}

class ClearEvent extends BaseInputFoodEvent {
  const ClearEvent();
}
