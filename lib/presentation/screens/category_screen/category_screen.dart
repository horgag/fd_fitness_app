import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/category/category_repository.dart';
import 'package:fd_fitness_app/domain/models/category/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/category_bloc.dart';
import 'component/category_component.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen(this._categoryType);
  final CategoryType _categoryType;
  static const String path = '/exercisesAndTrainingsScreen';

  static const String _categoryTypeKey = '_categoryTypeKey';
  static Map<String, dynamic> setArgs({required CategoryType categoryType}) => <String, dynamic>{_categoryTypeKey: categoryType};

  @override
  Widget build(BuildContext context) {
    final Object? modalRouteArgs = ModalRoute.of(context)?.settings.arguments;
    final Map<String, dynamic>? args = modalRouteArgs == null ? null : modalRouteArgs as Map<String, dynamic>;
    return BlocProvider<CategoryBloc>(
      create: (_) => CategoryBloc(getIt<CategoryRepository>()),
      child: CategoryComponent(categoryType: args?[_categoryTypeKey] ?? _categoryType),
    );
  }
}
