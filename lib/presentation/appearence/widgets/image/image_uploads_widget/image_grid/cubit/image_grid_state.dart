part of 'image_grid_cubit.dart';

abstract class GetImageGridState extends Equatable {
  const GetImageGridState();

  @override
  List<Object?> get props => <Object?>[];
}

class GetImageGridLoadInProgress extends GetImageGridState {}

class GetImageGridLoadSuccess extends GetImageGridState {
  const GetImageGridLoadSuccess({required this.imageUrlsList});

  final List<String> imageUrlsList;

  @override
  List<Object> get props => <Object>[imageUrlsList];
}

class DeleteImageFailure extends GetImageGridLoadSuccess {
  const DeleteImageFailure(List<String> imageUrls, this.error) : super(imageUrlsList: imageUrls);

  final Object error;

  @override
  List<Object> get props => <Object>[error];
}

class GetImageGridFailure extends GetImageGridState {
  const GetImageGridFailure(this.error);

  final Object error;

  @override
  List<Object> get props => <Object>[error];
}
