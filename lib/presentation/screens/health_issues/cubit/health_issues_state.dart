part of 'health_issues_cubit.dart';

abstract class HealthIssuesState extends Equatable {
  const HealthIssuesState();

  @override
  List<Object?> get props => <Object?>[];
}

class HealthIssuesLoadingState extends HealthIssuesState {}

class HealthIssuesSelected extends HealthIssuesState {
  const HealthIssuesSelected([this.selected]);

  final List<HealthIssuesType>? selected;

  @override
  List<Object?> get props => <Object?>[selected];
}

class SuccessSavingState extends HealthIssuesState {}

class HealthIssuesErrorState extends HealthIssuesState {
  const HealthIssuesErrorState(this.errorString);

  final String errorString;

  @override
  List<Object?> get props => <Object?>[errorString];
}
