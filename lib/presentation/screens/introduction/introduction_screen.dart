import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/asset/asset_repository.dart';
import 'package:fd_fitness_app/domain/abstract/repository/inspiration/inspiration_repository.dart';

import 'bloc/introduction_bloc.dart';
import 'component/introduction_component.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  static const String path = '/introductionScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IntroductionBloc>(
      create: (_) => IntroductionBloc(getIt<InspirationRepository>(), getIt<AssetRepository>()),
      child: const IntroductionComponent(),
    );
  }
}
