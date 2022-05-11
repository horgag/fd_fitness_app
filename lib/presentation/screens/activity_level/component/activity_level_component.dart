import 'package:fd_fitness_app/domain/models/user_model/health/activity_level_type.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/toast/fl_toast_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/cubit/activity_level_cubit.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/cubit/activity_level_state.dart';
import 'package:fd_fitness_app/presentation/screens/activity_level/component/normal_day_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';

class ActivityLevelComponent extends StatefulWidget {
  const ActivityLevelComponent({Key? key}) : super(key: key);

  @override
  _ActivityLevelComponentState createState() => _ActivityLevelComponentState();
}

class _ActivityLevelComponentState extends State<ActivityLevelComponent> with FlToastMixin<ActivityLevelComponent> {
  ActivityLevelCubit get _bloc => context.read<ActivityLevelCubit>();

  @override
  void initState() {
    super.initState();
    _bloc.getUsersCurrentActivityLevel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ActivityLevelCubit, ActivityLevelState>(
        listener: (BuildContext context, ActivityLevelState state) {
          if (state is ActivityLevelError) {
            showToast(state.errorString);
          } else if (state is SuccessSavingActivityLevel) {
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, ActivityLevelState state) {
          if (state is ActivityLevelSelected) {
            return NormalDayActivityComponent(
              appBar: FdAppBar(),
              selectedType: state.activityLevelType,
              onPressed: state.activityLevelType != null ? () => _bloc.saveActivityLevel(state.activityLevelType!) : null,
              onChange: (String? input) {
                final int activeHours = int.parse(input!);
                ActivityLevelType? activityLevelType;
                if (activeHours < 2) {
                  activityLevelType = ActivityLevelType.bad;
                } else if (activeHours > 2 && activeHours < 5) {
                  activityLevelType = ActivityLevelType.moderate;
                } else if (activeHours > 5) {
                  activityLevelType = ActivityLevelType.high;
                }
                if (activityLevelType != null) _bloc.selectActivityLevel(activityLevelType);
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
