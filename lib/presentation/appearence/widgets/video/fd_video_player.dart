import 'package:better_player/better_player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

import 'package:fd_fitness_app/presentation/appearence/widgets/video/overlay/video_overlay.dart';
import 'package:fd_fitness_app/util/logger/logger_service.dart';

import 'controller/fd_video_controller.dart';

part 'controller/fd_video_manager.dart';

class FdVideoPlayer extends StatefulWidget {
  const FdVideoPlayer({
    Key? key,
    required this.url,
    this.fdVideoController,
    this.onPlayPauseTapped,
    this.thumbnail,
    required this.showExitButton,
  }) : super(key: key);

  final String url;
  final String? thumbnail;
  final FdVideoController? fdVideoController;
  final Function()? onPlayPauseTapped;
  final bool showExitButton;

  @override
  _FdVideoPlayerState createState() => _FdVideoPlayerState();
}

class _FdVideoPlayerState extends State<FdVideoPlayer> {
  late final BetterPlayerController _betterPlayerController;
  final _FdVideoManager _fullScreenManager = _FdVideoManager();

  FdVideoController? get fdVideoController => widget.fdVideoController;

  @override
  void initState() {
    super.initState();
    _initPlayerController();
  }

  @override
  void didUpdateWidget(covariant FdVideoPlayer oldWidget) {
    fdVideoController?.init(_betterPlayerController);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
    _betterPlayerController.removeEventsListener(_listenToPlayerEvents);
    _betterPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: BetterPlayer(controller: _betterPlayerController),
    );
  }

  /// Overlay widget rebuilds every time when orienation is changed even initState is being rerun
  Widget _overlay() {
    return StreamBuilder<bool>(
      stream: _fullScreenManager.fullScreenController,
      builder: (BuildContext context, AsyncSnapshot<bool?> snapshot) {
        final bool isFullScreen = snapshot.data ?? false;
        return VideoOverlay(
          showExitButton: widget.showExitButton,
          isVideoPlayingOnPressed: () => _onVideoOverlayTapped(isFullScreen),
          exitFullScreen: () => _betterPlayerController.exitFullScreen(),
          isFullScreen: isFullScreen,
          thumbnail: widget.thumbnail,
        );
      },
    );
  }

  void _initPlayerController() {
    final BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource.network(widget.url);
    final BetterPlayerConfiguration _playerConfiguration = BetterPlayerConfiguration(
      autoPlay: false,
      looping: true,
      overlay: _overlay(),
      aspectRatio: 1,
      showPlaceholderUntilPlay: true,
      controlsConfiguration: const BetterPlayerControlsConfiguration(showControls: false),
      autoDetectFullscreenDeviceOrientation: true,
      deviceOrientationsAfterFullScreen: <DeviceOrientation>[DeviceOrientation.portraitUp],
    );
    _betterPlayerController = BetterPlayerController(
      _playerConfiguration,
      betterPlayerDataSource: betterPlayerDataSource,
    );
    fdVideoController?.init(_betterPlayerController);
    _betterPlayerController.addEventsListener(_listenToPlayerEvents);
  }

  /// Listens to [BetterPlayerEventType.openFullscreen] and [BetterPlayerEventType.hideFullscreen] events
  /// and updates [_fullScreenManager]'s  controller accordingly
  void _listenToPlayerEvents(BetterPlayerEvent event) {
    if (event.betterPlayerEventType == BetterPlayerEventType.finished) {
      _betterPlayerController.exitFullScreen();
    }
    final bool openFullScreenEvent = event.betterPlayerEventType == BetterPlayerEventType.openFullscreen;
    final bool hideFullScreenEvent = event.betterPlayerEventType == BetterPlayerEventType.hideFullscreen;
    if (openFullScreenEvent || hideFullScreenEvent) {
      _fullScreenManager.addEvent(openFullScreenEvent ? openFullScreenEvent : false);
    }
  }

  /// Toggles Play/Pause according to current status and toggles FullScreen mode.
  /// returns true in case of Playing status
  bool _onVideoOverlayTapped(bool isFullScreen) {
    bool isPlayingResult = false;
    // enter fullscreen mode if not yet
    if (!isFullScreen) {
      _betterPlayerController.enterFullScreen();
    } else {
      final bool isCurrentlyPlaying = _betterPlayerController.isPlaying() ?? false;
      try {
        isPlayingResult = !isCurrentlyPlaying;
        if (isCurrentlyPlaying) {
          _betterPlayerController.pause();
          _betterPlayerController.exitFullScreen();
        } else {
          _betterPlayerController.play();
          widget.onPlayPauseTapped?.call();
        }
      } catch (error) {
        isPlayingResult = false;
        // calling play/pause on _betterPlayerController may cause StateError
        final bool isStateError = error is StateError;
        _handleError(
          isCurrentlyPlaying: isCurrentlyPlaying,
          error: error,
          isStateError: isStateError,
        );
      }
    }
    return isPlayingResult;
  }

  void _handleError({required bool isCurrentlyPlaying, bool isStateError = true, required dynamic error}) {
    _betterPlayerController.exitFullScreen();
    if (isStateError) {
      Log().e('Failed while ${isCurrentlyPlaying ? 'pausing' : 'playing'} the video: $error');
    } else
      Log().e('Unexpectedly failed while ${isCurrentlyPlaying ? 'pausing' : 'playing'} the video: $error');
  }
}
