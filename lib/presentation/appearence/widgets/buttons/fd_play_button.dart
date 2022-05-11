import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';

class FdPlayButton extends StatefulWidget {
  const FdPlayButton({Key? key, this.onTap, this.buttonSize = 64, this.isElevated = false, this.isAnimating = false}) : super(key: key);

  final double buttonSize;
  final bool isElevated, isAnimating;
  final Function()? onTap;

  @override
  _FdPlayButtonState createState() => _FdPlayButtonState();
}

class _FdPlayButtonState extends State<FdPlayButton> with SingleTickerProviderStateMixin {
  static const Duration _duration = Duration(milliseconds: 300);

  late final AnimationController _controller = AnimationController(vsync: this, duration: _duration);
  final Tween<double> _playsPauseTween = Tween<double>(begin: 0.0, end: 1.0);
  bool get _isPlaying => _controller.value == _playsPauseTween.end;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: widget.buttonSize,
        height: widget.buttonSize,
        decoration: _decoration(),
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _playsPauseTween.animate(_controller),
          color: AppColors.secondary,
          size: widget.buttonSize,
        ),
      ),
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      boxShadow: widget.isElevated
          ? const <BoxShadow>[
              BoxShadow(
                color: Color(0x0B000029),
                offset: Offset(0, 3),
                blurRadius: 8,
                spreadRadius: 4,
              ),
            ]
          : null,
    );
  }

  void _handleTap() {
    if (widget.onTap != null) {
      widget.onTap!();
      if (widget.isAnimating) {
        if (_isPlaying)
          _controller.reverse();
        else
          _controller.forward();
      }
    }
  }
}
