part of 'feed_bloc.dart';

@immutable
abstract class FeedState {
  const FeedState();
}

class FeedInitial extends FeedState {
  const FeedInitial() : super();
}

class AllFeedResult extends FeedState {
  const AllFeedResult([this.feedList]);
  final BuiltList<Feed>? feedList;
}
