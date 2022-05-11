import 'package:fd_fitness_app/presentation/navigation/route_transition/slide_to_left_route.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/activity_level_screen.dart';
import 'package:fd_fitness_app/presentation/screens/add_food/add_food_screen.dart';
import 'package:fd_fitness_app/presentation/screens/add_hydration/add_hydration_screen.dart';
import 'package:fd_fitness_app/presentation/screens/auth/auth_screen.dart';
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

import 'route_transition/slide_top_route.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case FeedScreen.path:
        return _materialRouteToScreen(const FeedScreen(), settings);
      case FeedDetailsScreen.path:
        return _materialRouteToScreen(const FeedDetailsScreen(), settings);
      case MainScreen.path:
        return _materialRouteToScreen(const MainScreen(), settings);
      case AuthScreen.path:
        return _slideToLeftRouteToScreen(const AuthScreen(), settings);
      case OnboardingScreen.path:
        return _slideToLeftRouteToScreen(const OnboardingScreen(), settings);
      case IntroductionScreen.path:
        return _slideToLeftRouteToScreen(const IntroductionScreen(), settings);
      case InputFoodScreen.path:
        return _materialRouteToScreen(const InputFoodScreen(), settings);
      case ProgressScreen.path:
        return _slideToLeftRouteToScreen(const ProgressScreen(), settings);
      case EndOfPhaseScreen.path:
        return _slideToTopRouteToScreen(const EndOfPhaseScreen(), settings);
      case UpdateImageAndWeightScreen.path:
        return _slideToLeftRouteToScreen(const UpdateImageAndWeightScreen(), settings);
      case ImageUploadsScreen.path:
        return _slideToLeftRouteToScreen(const ImageUploadsScreen(), settings);
      case UpdateWeightScreen.path:
        return _slideToLeftRouteToScreen(const UpdateWeightScreen(), settings);
      case AddFoodScreen.path:
        return _slideToLeftRouteToScreen(const AddFoodScreen(), settings);
      case MyFoodListScreen.path:
        return _slideToTopRouteToScreen(const MyFoodListScreen(), settings);
      case ActivityLevelScreen.path:
        return _slideToLeftRouteToScreen(const ActivityLevelScreen(), settings);
      case HealthIssuesScreen.path:
        return _slideToLeftRouteToScreen(const HealthIssuesScreen(), settings);
      case AddHydrationScreen.path:
        return _slideToLeftRouteToScreen(const AddHydrationScreen(), settings);
      default:
        return _slideToLeftRouteToScreen(const WelcomeScreen());
    }
  }

  static Route<dynamic> _materialRouteToScreen(Widget screen, [RouteSettings? settings]) => MaterialPageRoute<dynamic>(
        builder: (_) => screen,
        settings: settings,
      );

  static Route<dynamic> _slideToLeftRouteToScreen(Widget screen, [RouteSettings? settings]) => SlideToLeftRoute(
        builder: (_) => screen,
        settings: settings,
      );

  static Route<dynamic> _slideToTopRouteToScreen(Widget screen, [RouteSettings? settings]) => SlideToTopRoute(
        builder: (_) => screen,
        settings: settings,
      );
}
