import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:flutter/material.dart';

/// Helps to manage list of video items 
mixin VideoListMixin<T extends StatefulWidget> on State<T> {
  final Map<String, FdVideoController> fdVideoControllers = <String, FdVideoController>{};

  void stopOtherPlayers(String id) {
    fdVideoControllers.forEach((String feedId, FdVideoController controller) {
      if (feedId != id) controller.stop();
    });
  }
}
