import 'dart:async';

import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_exit_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_play_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/network_image.dart';
import 'package:flutter/material.dart';

class VideoOverlay extends StatefulWidget {
  const VideoOverlay({
    Key? key,
    required this.isVideoPlayingOnPressed,
    required this.exitFullScreen,
    required this.showExitButton,
    this.isFullScreen = false,
    this.thumbnail,
  }) : super(key: key);

  final bool Function() isVideoPlayingOnPressed;
  final Function() exitFullScreen;
  final bool showExitButton;
  final bool isFullScreen;
  final String? thumbnail;
  @override
  _VideoOverlayState createState() => _VideoOverlayState();
}

class _VideoOverlayState extends State<VideoOverlay> with SingleTickerProviderStateMixin {
  static const Duration _visibilityDuration = Duration(milliseconds: 3000), _opacityDuration = Duration(milliseconds: 300);

  late final AnimationController _opacityController = AnimationController(vsync: this, duration: _opacityDuration);
  final Tween<double> _opacityTween = Tween<double>(begin: 1, end: 0);
  Timer? _timer;
  bool _isPlaying = false;

  // Enable any animation only for full screen
  bool get _isFullScreen => widget.isFullScreen;

  bool get _isInvisible => _opacityController.value > 0;

  @override
  void dispose() {
    _opacityController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isFullScreen && !_opacityController.isAnimating && _isPlaying) {
          _toggleControls();
        }
      },
      child: Container(
        color: _isFullScreen ? Colors.transparent : const Color.fromRGBO(250, 250, 250, 1),
        child: Stack(
          children: <Widget>[
            if (!_isFullScreen)
              Positioned.fill(
                child: FdNetworkImage(
                  imageUrl: widget.thumbnail ?? 'https://media.graphcms.com/wR9buapDRkqPfmjCh2iX',
                  fit: BoxFit.fill,
                ),
              ),
            Positioned(
              top: 20,
              left: 20,
              child: widget.showExitButton ? _exitWithOpacityButton() : Container(),
            ),
            Align(
              alignment: Alignment.center,
              child: _playPauseWithOpacityButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _playPauseWithOpacityButton() {
    return AnimatedBuilder(
      animation: _opacityTween.animate(_opacityController),
      builder: (BuildContext context, Widget? child) {
        const double visibleOpacity = 1;
        final double opacity = visibleOpacity - _opacityController.value;
        return Opacity(
          opacity: opacity,
          child: _playPauseButton(),
        );
      },
    );
  }

  Center _playPauseButton() {
    return Center(
      child: !_isFullScreen
          ? const SizedBox()
          : FdPlayButton(
              isAnimating: true,
              onTap: _isInvisible || _opacityController.isAnimating
                  ? null
                  : () {
                      if (_opacityController.isAnimating || _isInvisible) return;
                      _isPlaying = widget.isVideoPlayingOnPressed();
                      if (!_isPlaying) return;
                      _toggleControls();
                    },
            ),
    );
  }

  Widget _exitWithOpacityButton() {
    return AnimatedBuilder(
      animation: _opacityTween.animate(_opacityController),
      builder: (BuildContext context, Widget? child) {
        const double visibleOpacity = 1;
        final double opacity = visibleOpacity - _opacityController.value;
        return Opacity(
          opacity: opacity,
          child: _exitButton(),
        );
      },
    );
  }

  Center _exitButton() {
    return Center(
      child: !_isFullScreen
          ? const SizedBox()
          : FdExitButton(
              onTap: _isInvisible || _opacityController.isAnimating ? null : widget.exitFullScreen,
            ),
    );
  }

  void _toggleControls() {
    if (!_opacityController.isAnimating) {
      if (!_isInvisible) {
        _opacityController.forward();
      } else {
        _opacityController.reverse();
        _timer ??= Timer(_visibilityDuration, () {
          _timer?.cancel();
          _timer = null;
          _opacityController.forward();
        });
      }
    }
  }
}
