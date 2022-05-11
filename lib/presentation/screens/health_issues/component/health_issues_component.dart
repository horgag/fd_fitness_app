import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/domain/models/user_model/health/health_issues_type.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/health_issues/cubit/health_issues_cubit.dart';

import 'any_issues.dart';

class HealthIssuesComponent extends StatefulWidget {
  const HealthIssuesComponent();

  @override
  _HealthIssuesComponentState createState() => _HealthIssuesComponentState();
}

class _HealthIssuesComponentState extends State<HealthIssuesComponent> with FlToastMixin<HealthIssuesComponent> {
  HealthIssuesCubit get _cubit => context.read<HealthIssuesCubit>();

  @override
  void initState() {
    super.initState();
    _cubit.getUsersCurrentHealthIssues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HealthIssuesCubit, HealthIssuesState>(
        listener: (BuildContext context, HealthIssuesState state) {
          if (state is HealthIssuesErrorState) {
            showToast(state.errorString);
          } else if (state is SuccessSavingState) {
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, HealthIssuesState state) {
          if (state is HealthIssuesSelected) {
            return AnyIssuesComponent(
              appBar: FdAppBar(),
              selectedType: state.selected,
              onPressed: state.selected != null ? () => _cubit.saveHealthIssues(state.selected!) : null,
              onChange: (Map<HealthIssuesType, bool> selections) {
                final List<HealthIssuesType> selectedTypes = selections.keys.where((HealthIssuesType el) => selections[el]!).toList();
                _cubit.selectHealthIssue(selectedTypes);
              },
            );
          } else {
            return BaseFdWidget(
              appBar: FdAppBar(),
              enabledScroll: false,
              child: const Center(
                child: FdLoader(),
              ),
            );
          }
        },
      ),
    );
  }
}
