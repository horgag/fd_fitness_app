import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:fd_fitness_app/data/firebase/mixins/firestore_mixin.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/meal_assets/meal_assets_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meals_container.dart';
import 'package:fd_fitness_app/domain/models/user_model/user_model.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

typedef MealDiaryMapEntry = MapEntry<MealType, QuerySnapshot<Map<String, dynamic>>>;
// ignore: always_specify_types
typedef MealDiaryResponse = List<MealDiaryMapEntry>;
// ignore: always_specify_types
typedef MealDiaryRequests = Future<MealDiaryMapEntry>;

class UserMealDiaryRepositoryImpl with FirestoreMixin implements UserMealDiaryRepository {
  UserMealDiaryRepositoryImpl()
      : _userRepository = getIt<UserRepository>(),
        _assetRepository = getIt<MealAssetsRepository>();

  final UserRepository _userRepository;
  final MealAssetsRepository _assetRepository;

  static const String _diaryKey = 'diary';

  @override
  String collectionKey() => 'meals_diary';

  @override
  Future<void> addFood(String userId, Food food) {
    if (food.mealType == null) throw Exception('MealType should not be empty');
    final String foodId = '${food.id}${food.label.hashCode}';
    return _getMealCollectionRef(userId, food.mealType!)
        .doc(foodId)
        .set(food.toJson())
        .then((dynamic value) => Log().d('Food is added to meal.'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  @override
  Future<void> clear(String userId) {
    return collectionRef
        .doc(userId)
        .delete()
        .then((dynamic value) => Log().d('Clear diary history.'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  @override
  Future<MealsContainer?> getMealDiary(String userId, [DateTime? date]) {
    return Future.wait(_provideMealDiaryRequests(userId, date?.getDateWithoutTime())).then(
      // ignore: always_specify_types
      (MealDiaryResponse value) async {
        final UserModel? model = await _userRepository.getUser(userId);
        final List<Meal> meals = value.fold<List<Meal>>(<Meal>[], _foldMealsDiaryResponseToList).toList();
        return MealsContainer(userModel: model!, meals: meals, dateTime: date?.getDateWithoutTime());
      },
    ).catchError(
      (Object error) {
        Log().e('Failed: $error');
        throw Exception('Failed fetching meal diary');
      },
    );
  }

  @override
  Future<void> removeFood(String userId, Food food, [DateTime? date]) {
    if (food.mealType == null) throw Exception('MealType should not be empty');
    final String foodId = '${food.id}${food.label?.hashCode}';
    return _getMealCollectionRef(userId, food.mealType!, date?.getDateWithoutTime())
        .doc(foodId)
        .delete()
        .then((dynamic value) => Log().d('${food.label} was removed from ${describeEnum(food.mealType!)}'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  @override
  Future<void> updateFood(String userId, Food food, [DateTime? date]) {
    if (food.mealType == null) throw Exception('MealType should not be empty');
    final String foodId = '${food.id}${food.label?.hashCode}';
    return _getMealCollectionRef(userId, food.mealType!, date)
        .doc(foodId)
        .update(food.toJson())
        .then((dynamic value) => Log().d('${food.label} was removed from ${describeEnum(food.mealType!)}'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  @override
  Future<void> updateCustomCalories(String userId, int customCalories, [DateTime? date]) {
    return collectionRef
        .doc(userId)
        .collection(_diaryKey)
        .doc(date?.getDateWithoutTime().millisecondsSinceEpoch.toString() ?? MealsContainer.todayTimestamp().toString())
        .update({'maxCaloriesCustom': customCalories})
        .then((dynamic value) => Log().d('Max calories for today updated to $customCalories'))
        .catchError((Object error) => Log().e('Failed: $error'));
  }

  List<Meal> _foldMealsDiaryResponseToList(List<Meal> meals, MapEntry<MealType, QuerySnapshot<Map<String, dynamic>>> el) {
    final FoodBag foodBag = FoodBag(
      foodList: el.value.docs
          .map<Food>(
            (QueryDocumentSnapshot<Map<String, dynamic>> e) => Food.fromJson(e.data()),
          )
          .toList(),
    );
    final MealType type = el.key;
    return meals
      ..add(
        Meal(
          mealType: type,
          foodBag: foodBag,
          imageUrl: _assetRepository.getImageUrlByMealType(type),
        ),
      );
  }

  // ignore: always_specify_types
  List<MealDiaryRequests> _provideMealDiaryRequests(String userId, [DateTime? date]) {
    return MealType.values
        // ignore: always_specify_types
        .map<MealDiaryRequests>(
          (MealType mealType) => _getMealCollectionRef(userId, mealType, date?.getDateWithoutTime()).get().then(
                // ignore: always_specify_types
                (QuerySnapshot<Map<String, dynamic>> value) => MealDiaryMapEntry(mealType, value),
              ),
        )
        .toList();
  }

  CollectionReference<Map<String, dynamic>> _getMealCollectionRef(String userId, MealType mealType, [DateTime? date]) => collectionRef
      .doc(userId)
      .collection(_diaryKey)
      .doc(date?.getDateWithoutTime().millisecondsSinceEpoch.toString() ?? MealsContainer.todayTimestamp().toString())
      .collection(describeEnum(mealType).toLowerCase());
}

extension DateTimeExtension on DateTime {
  DateTime getDateWithoutTime() {
    return DateTime(year, month, day);
  }
}
