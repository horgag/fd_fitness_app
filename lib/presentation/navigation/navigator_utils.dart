import 'package:fd_fitness_app/domain/models/feed/feed.dart';
import 'package:fd_fitness_app/domain/models/food/food.dart';
import 'package:fd_fitness_app/domain/models/food/food_bag.dart';
import 'package:fd_fitness_app/domain/models/food/meal/meal_type.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/activity_level_screen.dart';
import 'package:fd_fitness_app/presentation/screens/add_food/add_food_screen.dart';
import 'package:fd_fitness_app/presentation/screens/add_hydration/add_hydration_screen.dart';
import 'package:fd_fitness_app/presentation/screens/auth/auth_screen.dart';
import 'package:fd_fitness_app/presentation/screens/auth/model/auth_data_model.dart';
import 'package:fd_fitness_app/presentation/screens/end_of_phase/end_of_phase_screen.dart';
import 'package:fd_fitness_app/presentation/screens/feed/feed_screen.dart';
import 'package:fd_fitness_app/presentation/screens/feed_details/feed_details_screen.dart';
import 'package:fd_fitness_app/presentation/screens/health_issues/health_issues_screen.dart';
import 'package:fd_fitness_app/presentation/screens/image_uploads/image_uploads_screen.dart';
import 'package:fd_fitness_app/presentation/screens/input_food/input_food_screen.dart';
import 'package:fd_fitness_app/presentation/screens/introduction/introduction_screen.dart';
import 'package:fd_fitness_app/presentation/screens/main/main_screen.dart';
import 'package:fd_fitness_app/presentation/screens/my_food_list/my_food_list_screen.dart';
import 'package:fd_fitness_app/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:fd_fitness_app/presentation/screens/progress/progress_screen.dart';
import 'package:fd_fitness_app/presentation/screens/update_image_and_weight/update_image_and_weight_screen.dart';
import 'package:fd_fitness_app/presentation/screens/update_weight/update_weight_screen.dart';
import 'package:fd_fitness_app/presentation/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

/// Contains methods for navigating.
/// Naming convention:
/// goTo<NameScreen> - when push any screen
/// returnTo<NameScreen> - when using popUntil/pushNamedAndRemoveUntil/popAndPushNamed
class NavigatorUtils {
  static void goBack(BuildContext context, [Object? args]) {
    if (context.navigator.canPop()) {
      context.navigator.pop(args);
    }
  }

  static Future<dynamic> goToFeedScreen(BuildContext context, {String? title, String? categoryId}) {
    return context.navigator.pushNamed(
      FeedScreen.path,
      arguments: (title == null && categoryId == null) ? null : FeedScreen.setArgs(title, categoryId),
    );
  }

  static Future<dynamic> goToMainScreen(BuildContext context) {
    return context.navigator.pushNamed(MainScreen.path);
  }

  static void returnToMainScreen(BuildContext context) {
    context.navigator.popAndPushNamed(MainScreen.path);
  }

  static void replaceToMainScreen(BuildContext context) {
    context.navigator.pushReplacementNamed(MainScreen.path);
  }

  static Future<dynamic> goToFeedDetailsScreen(BuildContext context, {required Feed feed}) {
    return context.navigator.pushNamed(FeedDetailsScreen.path, arguments: FeedDetailsScreen.setArgs(feed: feed));
  }

  static Future<dynamic> goToAuthScreen(BuildContext context, [AuthDataModel? authData]) {
    if (authData != null) {
      return context.navigator.pushReplacementNamed(AuthScreen.path, arguments: AuthScreen.setArgs(authData: authData));
    } else {
      return context.navigator.pushNamed(AuthScreen.path);
    }
  }

  static void replaceToOnboardingScreen(BuildContext context) {
    context.navigator.pushReplacementNamed(OnboardingScreen.path);
  }

  static void replaceToIntroductionScreen(BuildContext context) {
    context.navigator.pushReplacementNamed(IntroductionScreen.path);
  }

  static dynamic goToFoodSearchListScreen(BuildContext context, MealType mealType) {
    return context.navigator.pushNamed(
      InputFoodScreen.path,
      arguments: InputFoodScreen.setArgs(mealType),
    );
  }

  static Future<dynamic> goToUpdateImageAndWeightScreen(
    BuildContext context, [
    UpdateImageAndWeightType type = UpdateImageAndWeightType.standard,
  ]) {
    return context.navigator.pushNamed(
      UpdateImageAndWeightScreen.path,
      arguments: UpdateImageAndWeightScreen.setArgs(type),
    );
  }

  static Future<dynamic> goToUpdateWeightScreen(
    BuildContext context, [
    UpdateWeightType type = UpdateWeightType.standard,
  ]) {
    return context.navigator.pushNamed(
      UpdateWeightScreen.path,
      arguments: UpdateWeightScreen.setArgs(type),
    );
  }

  static Future<dynamic> replaceToEndOfPhaseScreen(BuildContext context, [int lostWeight = 0]) {
    return context.navigator.pushReplacementNamed(
      EndOfPhaseScreen.path,
      arguments: EndOfPhaseScreen.setArgs(lostWeight),
    );
  }

  static void returnToWelcomeScreen(BuildContext context) {
    context.navigator.pushNamedAndRemoveUntil(WelcomeScreen.path, (_) => false);
  }

  static Future<dynamic> goToProgressScreen(BuildContext context) {
    return context.navigator.pushNamed(ProgressScreen.path);
  }

  static Future<dynamic> goToImageUploadsScreen(BuildContext context) {
    return context.navigator.pushNamed(ImageUploadsScreen.path);
  }

  static Future<dynamic> goToActivityLevelScreen(BuildContext context) {
    return context.navigator.pushNamed(ActivityLevelScreen.path);
  }

  static Future<dynamic> goToAddFoodScreen(BuildContext context, Food food) {
    return context.navigator.pushNamed(
      AddFoodScreen.path,
      arguments: AddFoodScreen.setArgs(food),
    );
  }

  static Future<dynamic> goToMyFoodListScreen(BuildContext context, FoodBag foodBag) {
    return context.navigator.pushNamed(
      MyFoodListScreen.path,
      arguments: MyFoodListScreen.setArgs(foodBag),
    );
  }

  static Future<dynamic> goToHealthIssuesScreen(BuildContext context) {
    return context.navigator.pushNamed(HealthIssuesScreen.path);
  }

  static Future<dynamic> goToAddHydrationScreen(BuildContext context, [Food? currentHydration]) {
    return context.navigator.pushNamed(
      AddHydrationScreen.path,
      arguments: AddHydrationScreen.setArgs(currentHydration),
    );
  }
}

extension NavigatorExt on BuildContext {
  NavigatorState get navigator => Navigator.of(this);
}
