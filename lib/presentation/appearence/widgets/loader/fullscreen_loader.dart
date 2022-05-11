import 'dart:ui';

import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:flutter/material.dart';

import 'fd_loader.dart';

class FullScreenLoaderWidget extends StatelessWidget {
  const FullScreenLoaderWidget({Key? key, required this.child, required this.isLoading}) : super(key: key);

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        child,
        if (isLoading) ...<Widget>[
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(color: Colors.black45),
            ),
          ),
          const Positioned.fill(
            child: Center(
              child: FdLoader(color: AppColors.splash),
            ),
          ),
        ],
      ],
    );
  }
}
