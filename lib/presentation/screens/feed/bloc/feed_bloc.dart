import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/domain/abstract/repository/feed/feed_repository.dart';
import 'package:fd_fitness_app/domain/models/feed/feed.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';
import 'package:meta/meta.dart';

part 'feed_event.dart';
part 'feed_state.dart';

class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc(this.feedRepository, {this.categoryId}) : super(const FeedInitial());

  final FeedRepository feedRepository;
  final String? categoryId;

  @override
  Stream<FeedState> mapEventToState(FeedEvent event) async* {
    if (event is LoadAllFeedEvent) {
      yield* _getFeed();
    }
  }

  Stream<FeedState> _getFeed() async* {
    if (categoryId?.isEmpty ?? true) {
      yield await feedRepository.getAllFeed().then(_listenCallback).catchError(_handleError);
    } else {
      yield await feedRepository.getFeedByCategoryId(categoryId!).then(_listenCallback).catchError(_handleError);
    }
  }

  Future<FeedState> _handleError(Object error) async {
    Log().e('Failed fetching feed $error');
    return const AllFeedResult();
  }

  FeedState _listenCallback(BuiltList<Feed>? result) => AllFeedResult(result);
}
