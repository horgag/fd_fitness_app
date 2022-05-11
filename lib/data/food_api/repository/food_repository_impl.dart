import 'package:fd_fitness_app/data/food_api/api/food_constants.dart';
import 'package:fd_fitness_app/data/food_api/client/dio_client.dart';
import 'package:fd_fitness_app/data/food_api/models/api_response.dart';
import 'package:fd_fitness_app/data/mappers/mapper.dart';
import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/food_repository.dart';
import 'package:fd_fitness_app/data/food_api/models/food/food.dart';
import 'package:fd_fitness_app/data/food_api/models/food/food_hints.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';

class FoodRepositoryImpl implements FoodRepository {
  FoodRepositoryImpl(this._dioClient) : hintsToMealFood = getIt<Mapper<HintsNet, Food>>();

  final DioClient _dioClient;
  final Mapper<HintsNet, Food> hintsToMealFood;

  Map<String, dynamic> _paramsFromLink(String link) {
    final String params = link.split('?')[1];
    final List<String> paramsList = params.split('&');
    return paramsList.fold<Map<String, dynamic>>(
      <String, dynamic>{},
      (Map<String, dynamic> prev, String next) {
        final List<String> paramKeyValue = next.split('=');
        prev[paramKeyValue[0]] = paramKeyValue[1];
        return prev;
      },
    );
  }

  @override
  Future<FoodBag?> searchFood(String search, {String? nextLink}) {
    String? session;
    if (nextLink?.isNotEmpty ?? false) session = _paramsFromLink(nextLink!)[sessionKey];

    final Map<String, dynamic> queryParameters = <String, dynamic>{
      searchKey: search,
      appIdKey: foodAppId,
      appKeyKey: foodAppKey,
    };
    if (session != null) queryParameters[sessionKey] = session;

    return _dioClient.httpCall(searchRequest, HTTP_METHOD.GET, queryParameters: queryParameters).then(
      (ApiResponse? value) {
        final FoodResponseNet? response = (value?.dataMap?.isNotEmpty ?? false) ? FoodResponseNet.fromJson(value!.dataMap!) : null;
        return response == null
            ? null
            : FoodBag(
                foodList: response.hints.map<Food>(hintsToMealFood.map).toList(),
                nextPageLink: response.nextLink,
              );
      },
    );
  }

  @override
  Future<FoodBag?> parserFood(String search, {String? nextLink}) {
    String? session;
    if (nextLink?.isNotEmpty ?? false) session = _paramsFromLink(nextLink!)[sessionKey];

    final Map<String, dynamic> queryParameters = <String, dynamic>{
      parseKey: search,
      appIdKey: foodAppId,
      appKeyKey: foodAppKey,
    };
    if (session != null) queryParameters[sessionKey] = session;

    return _dioClient.httpCall(parserClickRequest, HTTP_METHOD.GET, queryParameters: queryParameters).then(
      (ApiResponse? value) {
        final FoodResponseNet? response = (value?.dataMap?.isNotEmpty ?? false) ? FoodResponseNet.fromJson(value!.dataMap!) : null;
        return response == null
            ? null
            : FoodBag(
                foodList: response.hints.map<Food>(hintsToMealFood.map).toList(),
                nextPageLink: response.nextLink,
              );
      },
    );
  }
}
