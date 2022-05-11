import 'package:flutter/material.dart';

import 'package:fd_fitness_app/domain/models/feed/feed.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/common_properties.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/network_image.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/widgets/fd_player_placeholder.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({
    Key? key,
    required this.feed,
    this.onPlayPauseTapped,
    this.fdVideoController,
    this.onTitleTapped,
  }) : super(key: key);

  final Feed feed;
  final FdVideoController? fdVideoController;
  final Function()? onPlayPauseTapped, onTitleTapped;

  String? get _imageUrl => feed.image?.url;
  String? get _videoUrl => feed.video?.url;
  String? get _title => feed.title;
  String? get _subtitle => feed.subtitle;
  String? get _description => feed.description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTitleTapped?.call();
        NavigatorUtils.goToFeedDetailsScreen(context, feed: feed);
      },
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsetsDirectional.only(bottom: 40),
        child: _imageUrl != null ? _image(_imageUrl!) : _textDescription(),
      ),
    );
  }

  Widget _image(String url) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _titleWidget(),
        const Indent(vertical: 10),
        _feedCard(
          child: _videoUrl != null
              ? FdPlayerPlaceholder(
                  url: _videoUrl!,
                  thumbnail: _imageUrl,
                  fdVideoController: fdVideoController,
                  onPlayPauseTapped: onPlayPauseTapped,
                )
              : FdNetworkImage(
                  imageUrl: url,
                  builder: (_, Widget child) => _feedCard(child: child),
                ),
        ),
      ],
    );
  }

  Widget _textDescription() {
    return _feedCard(
      height: null,
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 12, top: 14, bottom: 14, end: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _titleWidget(hasPadding: false),
            const Indent(vertical: 8),
            Text(_subtitle ?? '', style: nunitoBold16),
            const Indent(vertical: 8),
            Text(
              _description ?? '',
              style: poppinsNormal16,
              softWrap: true,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }

  Padding _titleWidget({bool hasPadding = true}) {
    return Padding(
      padding: hasPadding ? const EdgeInsetsDirectional.only(start: 12.0) : EdgeInsetsDirectional.zero,
      child: Text(
        _title ?? '',
        style: nunitoBold24.copyWith(height: 1),
        softWrap: true,
        maxLines: 2,
      ),
    );
  }

  Widget _feedCard({required Widget child, double? height = 270}) {
    return ClipRRect(
      borderRadius: largeBorderRadius,
      child: Builder(builder: (BuildContext context) {
        return Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: child,
        );
      }),
    );
  }
}
