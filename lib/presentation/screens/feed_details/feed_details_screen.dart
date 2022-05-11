import 'package:fd_fitness_app/domain/models/feed/feed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/feed_details_bloc.dart';
import 'component/feed_details_component.dart';

enum FeedDetailsHeaderType { image, video, none }

class FeedDetailsScreen extends StatelessWidget {
  const FeedDetailsScreen();
  static const String path = '/feedDetailsScreen';

  static const String _feedKey = '_feedKey';

  static Map<String, dynamic> setArgs({required Feed feed}) => <String, dynamic>{_feedKey: feed};

  @override
  Widget build(BuildContext context) {
    final Object? modalRouteArgs = ModalRoute.of(context)?.settings.arguments;
    final Map<String, dynamic>? args = modalRouteArgs == null ? null : modalRouteArgs as Map<String, dynamic>;
    return BlocProvider<FeedDetailsBloc>(
      create: (_) => FeedDetailsBloc(),
      child: FeedDetailsComponent(feed: args![_feedKey]),
    );
  }
}
