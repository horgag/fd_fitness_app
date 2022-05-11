import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/meal_assets/meal_assets_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meals_container.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

part 'add_your_meal_event.dart';
part 'add_your_meal_state.dart';

class AddYourMealBloc extends Bloc<AddYourMealEvent, AddYourMealState> {
  AddYourMealBloc(this._userRepository, this._authRepository, this._assetRepository, this._userMealDiaryRepository)
      : super(const AddYourMealInitial());

  final UserRepository _userRepository;
  final AuthRepository _authRepository;
  final MealAssetsRepository _assetRepository;
  final UserMealDiaryRepository _userMealDiaryRepository;

  MealsContainer? _mealsContainer;

  @override
  Stream<AddYourMealState> mapEventToState(AddYourMealEvent event) async* {
    if (event is LoadYourMealsEvent) {
      yield* loadMeals();
    } else if (event is UpdateCaloriesEvent) {
      yield* updateMaxCalories(event.customCalories);
    }
  }

  Stream<AddYourMealState> loadMeals() async* {
    yield LoadingState(_mealsContainer);
    final List<Meal> meals = MealType.values
        .map<Meal>(
          (MealType type) => Meal(
            mealType: type,
            imageUrl: _assetRepository.getImageUrlByMealType(type),
          ),
        )
        .toList();
    yield await _fetchUser().then((UserModel? value) async {
      if (value == null) {
        return ErrorLoadingUserOccurredState(_mealsContainer);
      } else {
        _mealsContainer = await _userMealDiaryRepository.getMealDiary(value.id);
        if (_mealsContainer != null) {
          final List<Meal> meals = <Meal>[];
          _mealsContainer!.meals.forEach((Meal el) {
            meals.add(
              Meal.copyWith(
                el,
                imageUrl: _assetRepository.getImageUrlByMealType(el.mealType),
              ),
            );
          });
          _mealsContainer = MealsContainer.copyWith(_mealsContainer!, meals: meals);
        } else {
          _mealsContainer = MealsContainer(userModel: value, meals: meals);
        }
        return ResultMealState(_mealsContainer!);
      }
    });
  }

  Future<UserModel?> _fetchUser() => _authRepository
          .authModel()
          .then(
            (AuthModel value) => _userRepository.getUser(value.userId!).catchError(
              (Object error) {
                _handleError(error, 'Failed fetching authModel');
              },
            ),
          )
          .catchError(
        (Object error) {
          _handleError(error, 'Failed fetching authModel');
        },
      );

  Stream<AddYourMealState> updateMaxCalories(int customCalories) async* {
    yield LoadingState(_mealsContainer);
    await _authRepository.authModel().then(
      (AuthModel auth) {
        if (auth.userId != null) Log().d('New max calories for today: $customCalories');
        return _userMealDiaryRepository.updateCustomCalories(auth.userId!, customCalories).then(
              (_) => emit(
                ResultMealState(_mealsContainer!),
              ),
            );
      },
    );
  }

  void _handleError(Object error, [String tag = '']) => Log().e('$tag: $error');
}
