import 'package:flutter/material.dart';

import 'package:fd_fitness_app/domain/models/feed/feed.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/common_properties.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/scroll/disable_over_scroll_behavior.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/fd_app_bar.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/html/fd_markdown.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/network_image.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/widgets/fd_player_placeholder.dart';

enum FeedDetailsMediaType { image, video, none }

class FeedDetailsComponent extends StatefulWidget {
  const FeedDetailsComponent({required this.feed});

  final Feed feed;

  @override
  _FeedDetailsComponentState createState() => _FeedDetailsComponentState();
}

class _FeedDetailsComponentState extends State<FeedDetailsComponent> {
  static const double _initialChildSize = 0.65, _maxChildSize = 1;
  late final FeedDetailsMediaType _feedDetailsMediaType;
  FdVideoController? _fdVideoController;
  Feed get _feed => widget.feed;

  @override
  void initState() {
    super.initState();
    if (_feed.video?.url != null) {
      _fdVideoController ??= FdVideoController();
      _feedDetailsMediaType = FeedDetailsMediaType.video;
    } else if (_feed.image?.url != null) {
      _feedDetailsMediaType = FeedDetailsMediaType.image;
    } else {
      _feedDetailsMediaType = FeedDetailsMediaType.none;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: _feedDetailsMediaType == FeedDetailsMediaType.none ? _noMediaContent() : _mediaContent(context),
      ),
    );
  }

  Column _noMediaContent() {
    return Column(
      children: <Widget>[
        _appBar(),
        _bottomSheetContent(false),
      ],
    );
  }

  Stack _mediaContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        _mediaHeader(context),
        _appBar(),
        Positioned.fill(child: _bottomSheet()),
      ],
    );
  }

  Widget _appBar() {
    // FdAppBar tries to fill all the available space in Stack that prevents Video from taps
    final FdAppBar appBar = FdAppBar();
    final double topPadding = MediaQuery.of(context).padding.top;
    final double appBarHeight = appBar.preferredSize.height;
    return Container(
      height: appBarHeight + topPadding,
      alignment: AlignmentDirectional.topStart,
      child: Align(
        alignment: AlignmentDirectional.topCenter,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 8.0),
          child: appBar,
        ),
      ),
    );
  }

  ScrollConfiguration _bottomSheet() {
    return ScrollConfiguration(
      behavior: const DisableOverScrollBehavior(),
      child: DraggableScrollableSheet(
        initialChildSize: _initialChildSize,
        maxChildSize: _maxChildSize,
        minChildSize: _initialChildSize,
        builder: (BuildContext context, ScrollController controller) {
          return Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: largeBorderRadius.topLeft, topRight: largeBorderRadius.topRight),
            ),
            child: SingleChildScrollView(
              controller: controller,
              child: _bottomSheetContent(),
            ),
          );
        },
      ),
    );
  }

  Align _mediaHeader(BuildContext context) {
    final double imageHeight = MediaQuery.of(context).size.height * (1 - _initialChildSize + 0.05);
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Container(
        height: imageHeight,
        width: MediaQuery.of(context).size.width,
        child: _mediaWidgetByType(),
      ),
    );
  }

  Widget _mediaWidgetByType() {
    if (_feedDetailsMediaType == FeedDetailsMediaType.video) {
      return FdPlayerPlaceholder(
        url: _feed.video!.url!,
        thumbnail: _feed.image!.url!,
        fdVideoController: _fdVideoController,
      );
    } else {
      return FdNetworkImage(
        imageUrl: _feed.image!.url!,
        fit: BoxFit.fitHeight,
      );
    }
  }

  Padding _bottomSheetContent([bool topPadding = true]) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 18.0, top: topPadding ? 38.0 : 0, end: 18.0, bottom: 18.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 90.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: AnimatedTitleText(_feed.title ?? ''),
                ),
              ],
            ),
          ),
          const Indent(vertical: 30),
          _feedDetailsMediaType != FeedDetailsMediaType.none
              ? _feed.description == null
                  ? _noDescriptionProvided()
                  : Text(_feed.description ?? '', style: poppinsNormal16)
              : _feed.mainContent == null
                  ? _noDescriptionProvided()
                  : FdMarkdown(markdownData: _feed.mainContent!),
        ],
      ),
    );
  }

  Widget _noDescriptionProvided() {
    return Row(children: const <Widget>[Text('No Desccription provided.', style: poppinsNormal16)]);
  }
}
