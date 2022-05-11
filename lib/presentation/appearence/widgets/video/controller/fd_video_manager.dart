part of '../fd_video_player.dart';

/// Private manager for managing Fullscreen status.
/// It keeps the latest value in [_fullScreenController]
/// Shouldn't be shared across other files as it's specifically designed for handling [FdVideoPlayer]'s orientation
class _FdVideoManager {
  
  ValueStream<bool> get fullScreenController => _fullScreenController.stream;

  /// Fullscreen status is set to false by default
  final BehaviorSubject<bool> _fullScreenController = BehaviorSubject<bool>.seeded(false);

  /// It adds only unique [event]
  void addEvent(bool event) {
    if (_fullScreenController.value != event) {
      _fullScreenController.add(event);
    }
  }
}
