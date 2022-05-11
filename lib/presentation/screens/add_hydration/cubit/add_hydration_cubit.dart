import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meals_container.dart';
import 'package:fd_fitness_app/domain/models/food/servings.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'add_hydration_state.dart';

class AddHydrationCubit extends Cubit<AddHydrationState> {
  AddHydrationCubit(Food? hydration, this._authRepository, this._userMealDiaryRepository)
      : _currentHydration = hydration,
        super(
          UpdateGlassesState(hydration?.servings?.number ?? 0),
        );

  final AuthRepository _authRepository;
  final UserMealDiaryRepository _userMealDiaryRepository;

  final Food? _currentHydration;

  void updateHydration(int glassesAmount) {
    emit(UpdateGlassesState(glassesAmount));
  }

  Future<void> saveHydration() async {
    final int glassesOfWater = state.glasses;
    emit(LoadingState(glassesOfWater));
    try {
      final AuthModel authModel = await _authRepository.authModel();
      final String? userId = authModel.userId;
      if (userId == null) {
        Log().e('[saveHydration] User id is nullable');
        emit(ErrorAuthState(glassesOfWater));
      } else {
        await _saveOrUpdateFood(userId, glassesOfWater);
      }
    } catch (e, stk) {
      Log().e(e.toString(), stk);
      emit(GeneralErrorState(glassesOfWater, e));
    }
  }

  Future<void> _saveOrUpdateFood(String userId, int glasses) async {
    late final bool hasLastFood;
    Food? curHydration;
    if (_currentHydration != null) {
      hasLastFood = false;
      curHydration = _currentHydration;
    } else {
      // Fetch existing hydration record
      final MealsContainer? mealsContainer = await _userMealDiaryRepository.getMealDiary(userId);
      // Search for hydration if it exists
      final Meal? meal = mealsContainer?.meals.firstWhereOrNull((Meal el) => el.mealType == MealType.hydration);
      // Check whether it has records
      hasLastFood = meal?.foodBag.isNotEmpty ?? false;
      if (hasLastFood) {
        curHydration = meal?.foodBag.foodList.first;
      }
    }

    final Food hydration = _getFood(curHydration, hasLastFood, glasses);
    await _userMealDiaryRepository.addFood(userId, hydration);
    emit(SuccessfullySavedState(glasses));
  }

  Food _getFood(Food? hydration, bool hasLastFood, int glasses) {
    // If record already exists - update it, otherwise - create new one
    if (hasLastFood) {
      return Food.copyWith(
        hydration!,
        servings: Servings.waterGlass(glasses),
      );
    } else {
      return Food.fromGlassesOfWater(glasses);
    }
  }
}
