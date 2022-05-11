import 'package:fd_fitness_app/data/firebase/repository/image_storage/image_storage_repository_impl.dart';
import 'package:fd_fitness_app/data/graphql/repository/profile_settings_assets/profile_settings_assets_repository_impl.dart';
import 'package:fd_fitness_app/domain/abstract/repository/image_storage/image_storage_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/profile_settings_assets/profile_settings_assets_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fd_fitness_app/data/firebase/repository/auth/auth_repository_impl.dart';
import 'package:fd_fitness_app/data/firebase/repository/food/user_meal_diary_repository_impl.dart';
import 'package:fd_fitness_app/data/firebase/repository/user/user_repository_impl.dart';
import 'package:fd_fitness_app/data/food_api/api/food_constants.dart';
import 'package:fd_fitness_app/data/food_api/client/dio_client.dart';
import 'package:fd_fitness_app/data/food_api/models/food/food.dart';
import 'package:fd_fitness_app/data/food_api/models/food/food_hints.dart';
import 'package:fd_fitness_app/data/food_api/repository/food_repository_impl.dart';
import 'package:fd_fitness_app/data/graphql/client/graphql_client.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_id/asset_by_id.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/asset/get_asset_by_name/asset_by_name.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/all_categories/all_category.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/category/get_category_by_type/get_category_by_type.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/all_feed/all_feed.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/feed/get_feed_by_category/get_feed_by_category_id.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/models/requests/inspiration/all_inspirations.data.gql.dart';
import 'package:fd_fitness_app/data/graphql/repository/asset/asset_repository_impl.dart';
import 'package:fd_fitness_app/data/graphql/repository/category/category_repository_impl.dart';
import 'package:fd_fitness_app/data/graphql/repository/feed/feed_repository_impl.dart';
import 'package:fd_fitness_app/data/graphql/repository/inspiration/inspiration_repository_impl.dart';
import 'package:fd_fitness_app/data/graphql/repository/meal_assets/meal_assets_repository_impl.dart';
import 'package:fd_fitness_app/data/local/client/hive_client.dart';
import 'package:fd_fitness_app/data/local/models/food_local.dart';
import 'package:fd_fitness_app/data/local/repository/recent_food_search_repository_impl.dart';
import 'package:fd_fitness_app/data/mappers/asset/asset_by_id_mapper.dart';
import 'package:fd_fitness_app/data/mappers/asset/asset_by_name_mapper.dart';
import 'package:fd_fitness_app/data/mappers/category/all_categories_mapper.dart';
import 'package:fd_fitness_app/data/mappers/category/get_category_by_type_mapper.dart';
import 'package:fd_fitness_app/data/mappers/feed/all_feed_data_mapper.dart';
import 'package:fd_fitness_app/data/mappers/feed/feed_by_category_id_mapper.dart';
import 'package:fd_fitness_app/data/mappers/food/food_domain_to_local.dart';
import 'package:fd_fitness_app/data/mappers/food/food_local_to_domain.dart';
import 'package:fd_fitness_app/data/mappers/food/food_response_to_food_bag.dart';
import 'package:fd_fitness_app/data/mappers/food/hints_to_meal_food.dart';
import 'package:fd_fitness_app/data/mappers/food/hints_to_measures.dart';
import 'package:fd_fitness_app/data/mappers/inspiration/all_inspirations_mapper.dart';
import 'package:fd_fitness_app/data/mappers/mapper.dart';
import 'package:fd_fitness_app/domain/abstract/repository/asset/asset_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/authentication/auth_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/category/category_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/feed/feed_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/food_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/recent_food_search_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/food/user_meal_diary_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/inspiration/inspiration_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/meal_assets/meal_assets_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/user/user_repository.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';
import 'package:fd_fitness_app/domain/models/feed/feed.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart' as domain;
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:fd_fitness_app/domain/models/food/measure.dart' as domain;
import 'package:fd_fitness_app/domain/models/inspiration/inspiration.dart';
import 'package:fd_fitness_app/util/app_version_service/app_version_service.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:fd_fitness_app/util/shared_preferences/shared_prefs.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator({bool isDebug = false}) async {
  Log.tag = 'fdWayFlutter';
  Log().d('Running ${isDebug ? 'debug' : 'release'} version...');
  await _initMisc();
  _registerMappers();
  _registerLocalRepositories();
  await _registerGraphQlRepositories();
  _registerFirebaseRepositories();
  await _registerDioRepositories();
}

Future<void> _initMisc() async {
  await Firebase.initializeApp();
  SharedPrefs.init(await SharedPreferences.getInstance());
  final PackageInfo packageInfo = await PackageInfo.fromPlatform();
  AppVersionService.init(packageInfo);
}

void _registerMappers() {
  getIt
    ..registerLazySingleton<Mapper<Food, FoodLocal>>(() => FoodDomainToLocalMapper())
    ..registerLazySingleton<Mapper<FoodLocal, Food>>(() => FoodLocalToDomainMapper())
    ..registerLazySingleton<Mapper<HintsNet, domain.Measures>>(() => HintsToMeasuresMapper())
    ..registerLazySingleton<Mapper<HintsNet, domain.Food>>(() => HintsToMealFoodMapper())
    ..registerLazySingleton<Mapper<FoodResponseNet, FoodBag>>(() => FoodResponseToFoodBagMapper())
    ..registerLazySingleton<Mapper<GGetAssetByFileNameData_assets, AssetModel>>(() => AssetByFileNameMapper())
    ..registerLazySingleton<Mapper<GGetAssetByIdData_assets, AssetModel>>(() => AssetByIdMapper())
    ..registerLazySingleton<Mapper<GAllInspirationsData_inspirationItems, Inspiration>>(() => AllInspirationsMapper())
    ..registerLazySingleton<Mapper<GAllFeedData_feedItems, Feed>>(() => AllFeedMapper())
    ..registerLazySingleton<Mapper<GFeedByCategoryIdData_feedItems, Feed>>(() => FeedByCategoryIdMapper())
    ..registerLazySingleton<Mapper<GGetCategoryByTypeData_categories, Category>>(() => GetCategoryByTypeMapper())
    ..registerLazySingleton<Mapper<GAllCategoriesData_categories, Category>>(() => AllCategoriesMapper());
}

Future<void> _registerGraphQlRepositories() async {
  final GraphQlClient graphQlClient = GraphQlClient();
  await graphQlClient.initClient();
  getIt
    ..registerSingleton<GraphQlClient>(graphQlClient, dispose: (GraphQlClient client) async => client.dispose())
    ..registerLazySingleton<AssetRepository>(() => AssetRepositoryImpl(graphQlClient.client))
    ..registerLazySingleton<MealAssetsRepository>(() => MealAssetsRepositoryImpl())
    ..registerLazySingleton<ProfileSettingsAssetsRepository>(() => ProfileSettingsAssetsRepositoryImpl())
    ..registerLazySingleton<InspirationRepository>(() => InspirationRepositoryImpl(graphQlClient.client))
    ..registerLazySingleton<FeedRepository>(() => FeedRepositoryImpl(graphQlClient.client))
    ..registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(graphQlClient.client));
}

Future<void> _registerFirebaseRepositories() async {
  getIt
    ..registerLazySingleton<UserRepository>(() => UserRepositoryImpl())
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl())
    ..registerLazySingleton<UserMealDiaryRepository>(() => UserMealDiaryRepositoryImpl())
    ..registerLazySingleton<ImageStorageRepository>(() => ImageStorageRepositoryImpl());
}

Future<void> _registerDioRepositories() async {
  final DioClient dioClient = DioClient.init(foodBaseUrl)..initCookies();
  getIt
    ..registerSingleton<DioClient>(dioClient, dispose: (DioClient client) async => client.dispose())
    ..registerLazySingleton<FoodRepository>(() => FoodRepositoryImpl(dioClient));
}

Future<void> _registerLocalRepositories() async {
  final HiveClient hiveClient = HiveClient.init();
  getIt
    ..registerSingleton<HiveClient>(hiveClient, dispose: (HiveClient client) async => client.dispose())
    ..registerLazySingletonAsync<RecentFoodSearchRepository>(() async {
      return RecentFoodSearchRepositoryImpl(
        await hiveClient.fetchBox<FoodLocal>(HiveClient.foodBoxKey),
      );
    });
}
