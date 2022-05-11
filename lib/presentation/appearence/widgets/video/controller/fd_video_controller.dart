import 'package:better_player/better_player.dart';

/// Helps to control video player outside of the widget
class FdVideoController {
  BetterPlayerController? _betterPlayerController;

  void init(BetterPlayerController fdVideoPlayerController) {
    _betterPlayerController = fdVideoPlayerController;
  }

  void enterFullScreen() {
    if (_betterPlayerController == null) return;
    if (!_betterPlayerController!.isFullScreen) {
      _betterPlayerController?.enterFullScreen();
    }
  }

  /// Resets timeline
  void stop([bool shouldPause = false]) {
    if (_betterPlayerController?.isVideoInitialized() ?? false) {
      _betterPlayerController?.seekTo(const Duration(hours: 0, minutes: 0, seconds: 0));
      if (shouldPause) _betterPlayerController?.pause();
    }
  }
}
