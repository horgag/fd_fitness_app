import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/models/auth/auth_model.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';

part 'my_food_list_state.dart';

class MyFoodListCubit extends Cubit<BaseMyFoodListState> {
  MyFoodListCubit(FoodBag _foodBag, this._authRepository, this._userMealDiaryRepository)
      : mealType = _foodBag.foodList.first.mealType!,
        super(
          MyFoodListState(
            List<Food>.from(_foodBag.foodList),
          ),
        );

  final AuthRepository _authRepository;
  final UserMealDiaryRepository _userMealDiaryRepository;

  final MealType mealType;

  void removeFood(Food food) {
    _authRepository.authModel().then(
      (AuthModel model) {
        _userMealDiaryRepository.removeFood(model.userId!, food).then<void>(
          (_) {
            final List<Food> resultList = List<Food>.from(state.foodList)..remove(food);
            emit(MyFoodListState(resultList, wasUpdated: true));
          },
        );
      },
    );
  }
}
