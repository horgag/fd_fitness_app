part of 'category_bloc.dart';

@immutable
abstract class CategoryState {
  const CategoryState();
}

class CategoryInitial extends CategoryState {}

class ExercisesTrainingsInitial extends CategoryState {
  const ExercisesTrainingsInitial();
}

class AllCategoriesResult extends CategoryState {
  const AllCategoriesResult(this.result);
  final BuiltList<Category>? result;
}
