import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'feed_details_event.dart';
part 'feed_details_state.dart';

class FeedDetailsBloc extends Bloc<FeedDetailsEvent, FeedDetailsState> {
  FeedDetailsBloc() : super(FeedDetailsInitial());

  @override
  Stream<FeedDetailsState> mapEventToState(FeedDetailsEvent event) async* {}
}
