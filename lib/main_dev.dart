import 'package:fd_fitness_app/presentation/screens/app/app.dart';
import 'package:flutter/material.dart';

import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator(isDebug: true);
  runApp(FdFitnessApp());
}