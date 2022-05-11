import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/navigation/routes.dart';
import 'package:flutter/material.dart';

class FdFitnessApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FD-Way',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        primaryColorLight: AppColors.primary,
        primaryColorDark: AppColors.primary,
        secondaryHeaderColor: AppColors.secondary,
      ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
