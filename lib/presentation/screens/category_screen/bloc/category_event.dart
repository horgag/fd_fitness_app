part of 'category_bloc.dart';

@immutable
abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object?> get props => <Object?>[];
}

class LoadAllCategoriesEvent extends CategoryEvent {
  const LoadAllCategoriesEvent(this.categoryType);
  final CategoryType categoryType;

  @override
  List<Object?> get props => <Object?>[categoryType];
}
