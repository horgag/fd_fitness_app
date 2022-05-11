import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:fd_fitness_app/domain/abstract/repository/food/food_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/recent_food_search_repository.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'input_food_event.dart';
part 'input_food_state.dart';

enum FoodSourceType { local, remote }

class InputFoodBloc extends Bloc<BaseInputFoodEvent, BaseInputFoodResultState> {
  InputFoodBloc(this._recentFoodSearchRepository, this._foodRepository) : super(const SearchResultState.empty());

  final FoodRepository _foodRepository;
  final RecentFoodSearchRepository _recentFoodSearchRepository;

  final FoodBag _foodBag = FoodBag(foodList: List<Food>.empty(growable: true));
  String? _prevSearch;

  @override
  Stream<BaseInputFoodResultState> mapEventToState(BaseInputFoodEvent event) async* {
    if (event is LoadRecentFoodEvent) {
      yield* _recentFoods();
    } else if (event is SearchFoodEvent) {
      yield* _searchForFood(event.query);
    } else if (event is RecentSearchFoodEvent) {
      yield* _recentFood(event.query);
    } else if (event is SearchForMoreFoodEvent) {
      yield* _searchForFood(event.query, event.nextLink);
    } else if (event is ClearEvent) {
      yield* _clearRecentFood();
    }
  }

  Stream<BaseInputFoodResultState> _searchForFood(String search, [String? nextLink]) async* {
    if (nextLink == null) {
      yield LoadingState.fromFoodSearchResult(state);
    } else {
      yield LoadingMoreState.fromFoodSearchResult(state);
    }
    yield await _foodRepository.parserFood(search, nextLink: nextLink).then((FoodBag? value) {
      if (value == null) return ErrorResultState.fromFoodSearchResul(state);
      if (_prevSearch != search) _foodBag.foodList.clear();
      _foodBag.foodList.addAll(value.foodList);
      _prevSearch = search;
      return SearchResultState(_foodBag.foodList, nextLink: value.nextPageLink, sourceType: FoodSourceType.remote);
    });
  }

  Stream<BaseInputFoodResultState> _recentFood(String query) async* {
    final FoodBag value = _recentFoodSearchRepository.searchFor(query);
    Log().i('Searched item(s): $value');
    final bool isEmptyResult = !value.isNotEmpty;
    final List<Food> resultFoodList = <Food>[];
    final FoodSourceType source = isEmptyResult ? state.sourceType : FoodSourceType.local;
    resultFoodList.addAll(isEmptyResult ? state.foodList : value.foodList);
    yield SearchResultState(resultFoodList, sourceType: source);
  }

  Stream<BaseInputFoodResultState> _clearRecentFood() async* {
    yield await _recentFoodSearchRepository.clear().then(
          (_) => const SearchResultState(<Food>[], sourceType: FoodSourceType.local),
        );
  }

  Stream<BaseInputFoodResultState> _recentFoods() async* {
    final FoodBag value = _recentFoodSearchRepository.queryAll();
    yield SearchResultState(value.foodList);
  }
}
