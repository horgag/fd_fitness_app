import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/end_of_phase_component.dart';
import 'cubit/end_of_phase_cubit.dart';

class EndOfPhaseScreen extends StatelessWidget {
  const EndOfPhaseScreen({Key? key}) : super(key: key);

  static const String path = '/endOfPhaseScreen', _weightLostKey = '_weightLostKey';

  static Map<String, dynamic> setArgs(int weight) => <String, dynamic>{_weightLostKey: weight};

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final int weightLost = args![_weightLostKey]!;
    return BlocProvider<EndOfPhaseCubit>(
      create: (_) => EndOfPhaseCubit(),
      child: EndOfPhaseComponent(weightLost: weightLost),
    );
  }
}
