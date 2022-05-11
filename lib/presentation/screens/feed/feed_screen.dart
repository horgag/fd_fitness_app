import 'package:fd_fitness_app/di/di.dart';
import 'package:fd_fitness_app/domain/abstract/repository/feed/feed_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/feed_bloc.dart';
import 'component/feed_component.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen();
  static const String path = '/feedScreen';

  static const String _titleKey = '_titleKey', _categoryId = '_categoryId';

  static Map<String, dynamic> setArgs(String? title, String? categoryId) => <String, dynamic>{
        _titleKey: title,
        _categoryId: categoryId,
      };

  @override
  Widget build(BuildContext context) {
    final Object? modalRouteArgs = ModalRoute.of(context)?.settings.arguments;
    final Map<String, dynamic>? args = modalRouteArgs == null ? null : modalRouteArgs as Map<String, dynamic>;
    return BlocProvider<FeedBloc>(
      create: (_) => FeedBloc(getIt<FeedRepository>(), categoryId: args?[_categoryId]),
      child: FeedComponent(categoryTitle: args?[_titleKey]),
    );
  }
}
