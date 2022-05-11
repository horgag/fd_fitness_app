import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_play_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/fd_video_player.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:flutter/material.dart';

class CircleVideoItem extends StatelessWidget {
  const CircleVideoItem({
    Key? key,
    required this.title,
    required this.videoUrl,
    required this.thumbnail,
    this.onPlayPauseTapped,
    this.fdVideoController,
  }) : super(key: key);
  final String title, thumbnail, videoUrl;
  final FdVideoController? fdVideoController;
  final Function()? onPlayPauseTapped;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: _circleVideoItem()),
        const Indent(vertical: 10),
        _title(),
      ],
    );
  }

  Text _title() => Text(
        title,
        style: poppinsNormal16,
        softWrap: true,
      );

  SizedBox _circleVideoItem() {
    return SizedBox(
      width: 110,
      height: 101,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: <Widget>[
          if (videoUrl.isNotEmpty)
            Padding(
              padding: const EdgeInsetsDirectional.only(end: 10.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(90)),
                child: FdVideoPlayer(
                  showExitButton: true,
                  url: videoUrl,
                  thumbnail: thumbnail,
                  fdVideoController: fdVideoController,
                  onPlayPauseTapped: onPlayPauseTapped,
                ),
              ),
            ),
          Positioned.fill(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: FdPlayButton(
                buttonSize: 28,
                isElevated: true,
                onTap: () => fdVideoController?.enterFullScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
