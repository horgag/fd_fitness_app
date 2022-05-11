import 'package:bloc/bloc.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meals_container.dart';
import 'package:fd_fitness_app/presentation/screens/progress/bloc/progress_state.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

class ProgressCubit extends Cubit<ProgressState> {
  ProgressCubit(this._userMealDiaryRepository, this._authRepository) : super(const ProgressState());

  final AuthRepository _authRepository;
  final UserMealDiaryRepository _userMealDiaryRepository;

  Future<void> loadProgress() async {
    try {
      final AuthModel authModel = await _authRepository.authModel();
      if (authModel.userId == null) {
        emit(ErrorLoadingProgress());
        return;
      }

      final List<MealsContainer?> mealsForLast7Days = await _mealsForLast7Days(authModel.userId!);

      //We only want to average over the meals where the user entered data
      //We can't simply remove the empty meals because then the days where just water is entered will be removed
      final int numberOfMealsWithCaloriesConsumed = mealsForLast7Days.fold(0, (int previousValue, MealsContainer? mealsContainer) {
        return previousValue + ((mealsContainer != null && mealsContainer.consumedCalories > 0) ? 1 : 0);
      });

      final int totalCalories = mealsForLast7Days.fold(0, (int prevValue, MealsContainer? mealsContainer) {
        return prevValue + (mealsContainer?.consumedCalories ?? 0);
      });

      final int timesSlippedUp = mealsForLast7Days.fold(0, (int prevValue, MealsContainer? mealsContainer) {
        return prevValue + (mealsContainer?.didSlipUp ?? false ? 1 : 0);
      });

      final Map<int, int> waterOver7Days = mealsForLast7Days.asMap().map(
            (int index, MealsContainer? mealsContainer) => MapEntry<int, int>(
              index,
              mealsContainer?.consumedWater ?? 0,
            ),
          );

      emit(LoadedProgressState(
        //We want an int for average calories as the user won't care about .5 of a calorie
        averageCalories: totalCalories ~/ numberOfMealsWithCaloriesConsumed,
        timesSlippedUp: timesSlippedUp,
        waterConsumed: waterOver7Days,
      ));
    } catch (e, stk) {
      emit(ErrorLoadingProgress());
      Log().e(e.toString(), stk);
    }
  }

  Future<List<MealsContainer?>> _mealsForLast7Days(String userId) async {
    final DateTime today = DateTime.now();
    final List<Future<MealsContainer?>> getMealDiaries = <Future<MealsContainer?>>[];
    for (int i = 0; i < DateTime.daysPerWeek; i++) {
      getMealDiaries.add(_userMealDiaryRepository.getMealDiary(userId, today.subtract(Duration(days: i))));
    }

    final List<MealsContainer?> mealsForLast7Days = await Future.wait(getMealDiaries);

    return mealsForLast7Days;
  }


}
