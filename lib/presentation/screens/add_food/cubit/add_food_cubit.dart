import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/recent_food_search_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/nutrients.dart';
import 'package:fd_fitness_app/domain/models/food/servings.dart';
import 'package:fd_fitness_app/domain/models/food/servings_size.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'add_food_state.dart';

class AddFoodCubit extends Cubit<AddFoodState> {
  AddFoodCubit(this._food, this._recentFoodSearchRepository, this._userMealDiaryRepository, this._authRepository)
      : super(const AddFoodInitial());

  final AuthRepository _authRepository;
  final UserMealDiaryRepository _userMealDiaryRepository;
  final RecentFoodSearchRepository _recentFoodSearchRepository;

  final Food _food;
  String? get foodLabel => _food.label;

  void loadInitialServings() {
    final int length = _food.measures!.servingSize.length;
    final int mediumServingSizeIndex = length > 2 ? length ~/ 2 : 0;
    _emitFoodDetails(
      servingSizeValue: mediumServingSizeIndex.toDouble(),
      numberOfServingsValue: 1,
      servingSizeList: _food.measures?.servingSize,
      nutrients: _food.nutrients,
    );
  }

  void updateServingsSize(double index) {
    final Nutrients? nutrientsPerOneGram = _food.nutrientsPerOneGram;
    final ServingSize size = _food.measures!.servingSize[index.toInt()];
    _emitFoodDetails(
      servingSizeValue: index,
      numberOfServingsValue: state.numberOfServingsValue,
      servingSizeList: _food.measures?.servingSize,
      nutrients: nutrientsPerOneGram!.calculateNutritents(
        servingSizeWeight: size.weight,
        numberOfServings: state.numberOfServingsValue!.toInt(),
      ),
    );
  }

  void updateNumberOfServings(double number) {
    final Nutrients? nutrientsPerOneGram = _food.nutrientsPerOneGram;
    final int index = state.servingSizeValue!.toInt();
    final ServingSize size = _food.measures!.servingSize[index];
    _emitFoodDetails(
      servingSizeValue: state.servingSizeValue,
      numberOfServingsValue: number,
      servingSizeList: _food.measures?.servingSize,
      nutrients: nutrientsPerOneGram!.calculateNutritents(
        servingSizeWeight: size.weight,
        numberOfServings: number.toInt(),
      ),
    );
  }

  void _emitFoodDetails({
    double? servingSizeValue,
    double? numberOfServingsValue,
    List<ServingSize>? servingSizeList,
    Nutrients? nutrients,
  }) {
    emit(
      AddFoodInitial(
        servingSizeValue: servingSizeValue,
        numberOfServingsValue: numberOfServingsValue,
        servingSizeList: servingSizeList,
        nutrients: nutrients,
      ),
    );
  }

  Future<void> addFood() async {
    Log().d(state);
    final Food resultFood = Food.copyWith(
      _food,
      servings: Servings(
        servingSize: state.servingSizeList![state.servingSizeIndex!],
        nutrients: state.nutrients!,
        number: state.numberOfServingsIndex!,
      ),
    );
    await _authRepository.authModel().then(
      (AuthModel auth) {
        if (auth.userId != null) Log().d('Prepare food for saving: ${resultFood.label}');
        return _userMealDiaryRepository.addFood(auth.userId!, resultFood).then(
          (_) {
            return _recentFoodSearchRepository.addFood(resultFood).then(
              (int key) {
                Log().i('Added food: $key, Food ${key == -1 ? 'already exists' : 'is a new one'}');
                emit(SucceedAddingFood.copy(state));
              },
            );
          },
        );
      },
    );
  }
}
