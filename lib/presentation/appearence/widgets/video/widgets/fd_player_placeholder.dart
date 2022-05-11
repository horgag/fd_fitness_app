import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_play_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:flutter/material.dart';

import '../fd_video_player.dart';

class FdPlayerPlaceholder extends StatelessWidget {
  const FdPlayerPlaceholder({
    Key? key,
    required this.url,
    this.thumbnail,
    this.fdVideoController,
    this.onPlayPauseTapped,
  }) : super(key: key);
  final String url;
  final String? thumbnail;
  final FdVideoController? fdVideoController;
  final Function()? onPlayPauseTapped;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: FdVideoPlayer(
            showExitButton: true,
            url: url,
            thumbnail: thumbnail,
            fdVideoController: fdVideoController,
            onPlayPauseTapped: onPlayPauseTapped,
          ),
        ),
        Positioned.fill(
          child: Center(
            child: FdPlayButton(
              onTap: () => fdVideoController?.enterFullScreen(),
            ),
          ),
        ),
      ],
    );
  }
}
