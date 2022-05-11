import 'package:collection/collection.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkboxlist.dart';
import 'package:fd_fitness_app/presentation/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/sex_type.dart';

class SelectSexComponent extends StatefulWidget {
  const SelectSexComponent({this.onPressed, this.onBackPressed});
  final Function()? onPressed;
  final Function()? onBackPressed;

  @override
  _SelectSexComponentState createState() => _SelectSexComponentState();
}

class _SelectSexComponentState extends State<SelectSexComponent> {
  OnboardingBloc get _bloc => context.read<OnboardingBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: AppColors.primary,
          onPressed: widget.onBackPressed,
        ),
      ),
      body: BaseFdWidget(
        title: 'Select your sex',
        enabledScroll: false,
        child: FdCheckboxList<SexType>(
          subtitle: 'Please select your sex below',
          multipleChoice: false,
          isFieldsMandatory: true,
          choices: SexType.values,
          titleBuilder: (SexType type) {
            if (type == SexType.male) return 'Male';
            return 'Female';
          },
          onChange: (Map<SexType, bool> selections) {
            final SexType? sexType = selections.keys.firstWhereOrNull((SexType el) => selections[el]!);
            if (sexType != null) _bloc.add(SelectSexEvent(sexType));
          },
          onPressed: (_) => widget.onPressed?.call(),
        ),
      ),
    );
  }
}
