import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/activity_level_type.dart';

class ActivityLevelState extends Equatable {
  const ActivityLevelState();

  @override
  List<Object?> get props => <Object?>[];
}

class ActivityLevelSelected extends ActivityLevelState {
  const ActivityLevelSelected([this.activityLevelType]);

  final ActivityLevelType? activityLevelType;

  @override
  List<Object?> get props => <Object?>[activityLevelType];
}

class ActivityLevelLoading extends ActivityLevelState {}

class SuccessSavingActivityLevel extends ActivityLevelState {}

class ActivityLevelError extends ActivityLevelState {
  const ActivityLevelError(this.errorString);

  final String errorString;

  @override
  List<Object?> get props => <Object?>[errorString];
}