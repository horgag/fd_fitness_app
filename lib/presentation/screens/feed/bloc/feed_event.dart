part of 'feed_bloc.dart';

@immutable
abstract class FeedEvent {
  const FeedEvent();
}

class LoadAllFeedEvent extends FeedEvent {}
