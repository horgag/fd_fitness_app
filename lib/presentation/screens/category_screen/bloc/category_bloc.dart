import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fd_fitness_app/domain/abstract/repository/category/category_repository.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(this.categoryRepository) : super(CategoryInitial());

  final CategoryRepository categoryRepository;

  @override
  Stream<CategoryState> mapEventToState(CategoryEvent event) async* {
    if (event is LoadAllCategoriesEvent) {
      yield* _getCategoryType(event.categoryType);
    }
  }

  Stream<CategoryState> _getCategoryType(CategoryType categoryType) async* {
    yield await categoryRepository.getCategoryByType(categoryType).then((BuiltList<Category>? result) => AllCategoriesResult(result));
  }
}
