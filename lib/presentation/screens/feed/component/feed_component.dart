import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/video/video_list_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/domain/models/feed/feed.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/feed/feed_item.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/base_fd_circular_progress_indicator.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/feed/bloc/feed_bloc.dart';

class FeedComponent extends StatefulWidget {
  const FeedComponent({Key? key, this.categoryTitle}) : super(key: key);
  final String? categoryTitle;

  @override
  _FeedComponentState createState() => _FeedComponentState();
}

class _FeedComponentState extends State<FeedComponent> with VideoListMixin<FeedComponent> {
  FeedBloc get _bloc => context.read<FeedBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(LoadAllFeedEvent());
  }

  @override
  Widget build(BuildContext context) {
    final FeedState state = context.watch<FeedBloc>().state;
    final BuiltList<Feed>? feedList = state is AllFeedResult ? state.feedList : null;
    final bool isCategoryTitleEmpty = widget.categoryTitle?.isEmpty ?? true;
    fdVideoControllers.clear();
    feedList?.where((Feed feed) => feed.video?.url?.isNotEmpty ?? false).forEach((Feed e) {
      fdVideoControllers[e.id] ??= FdVideoController();
    });
    return isCategoryTitleEmpty
        ? _content(isCategoryTitleEmpty, context, feedList)
        : Scaffold(body: _content(isCategoryTitleEmpty, context, feedList));
  }

  BaseFdWidget _content(bool isCategoryTitleEmpty, BuildContext context, BuiltList<Feed>? feed) {
    final bool isEmpty = feed?.isEmpty ?? true;
    return BaseFdWidget(
      appBar: isCategoryTitleEmpty ? null : FdAppBar(),
      title: widget.categoryTitle ?? 'Feed',
      child: isEmpty
          ? const BaseFdCircularProgressIndicator()
          : Column(
              children: <Widget>[
                ...feed!.reversed
                    .toList()
                    .map<Widget>(
                      (Feed feed) => FeedItem(
                        feed: feed,
                        fdVideoController: fdVideoControllers[feed.id],
                        onPlayPauseTapped: () => stopOtherPlayers(feed.id),
                        onTitleTapped: () => stopOtherPlayers(feed.id),
                      ),
                    )
                    .toList(),
                Indent(vertical: UiHelper.getBottomNavBarHeight(context)),
              ],
            ),
    );
  }
}
