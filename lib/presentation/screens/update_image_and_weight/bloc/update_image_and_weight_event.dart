part of 'update_image_and_weight_bloc.dart';

abstract class UpdateImageAndWeightEvent extends Equatable {
  const UpdateImageAndWeightEvent();

  @override
  List<Object> get props => <Object>[];
}

class SaveDataEvent extends UpdateImageAndWeightEvent {
  const SaveDataEvent(this.weight);

  final int weight;
}
