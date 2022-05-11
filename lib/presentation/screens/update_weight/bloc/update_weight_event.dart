part of 'update_weight_bloc.dart';

abstract class UpdateWeightEvent extends Equatable {
  const UpdateWeightEvent();

  @override
  List<Object> get props => <Object>[];
}

class SaveDataEvent extends UpdateWeightEvent {
  const SaveDataEvent(this.weight);

  final int weight;
}
