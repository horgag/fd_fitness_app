import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AnimatedTitleText extends StatefulWidget {
  const AnimatedTitleText(
    this.text, {
    Key? key,
    this.textStyle,
    this.textWidthBasis,
    this.softWrap,
    this.overflow,
    this.barColor = AppColors.splash,
    this.animated = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.barHeight = 5,
  }) : super(key: key);

  final String text;
  final bool? softWrap;
  final bool animated;
  final TextStyle? textStyle;
  final TextWidthBasis? textWidthBasis;
  final TextOverflow? overflow;
  final Color barColor;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final double barHeight;

  @override
  _AnimatedTitleTextState createState() => _AnimatedTitleTextState();
}

class _AnimatedTitleTextState extends State<AnimatedTitleText> {
  final GlobalKey<dynamic> _titleKey = GlobalKey();
  double _lineWidth = 20;

  @override
  void didUpdateWidget(covariant AnimatedTitleText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.animated) WidgetsBinding.instance!.addPostFrameCallback((_) => _updateBottomLineWidth());
  }

  @override
  void initState() {
    super.initState();
    if (widget.animated) WidgetsBinding.instance!.addPostFrameCallback((_) => _updateBottomLineWidth());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: widget.mainAxisAlignment,
      mainAxisSize: widget.mainAxisSize,
      crossAxisAlignment: widget.crossAxisAlignment,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Text(
            widget.text,
            key: _titleKey,
            style: widget.textStyle ?? nunitoBold40,
            textWidthBasis: widget.textWidthBasis ?? TextWidthBasis.longestLine,
            softWrap: widget.softWrap,
            overflow: widget.overflow,
          ),
        ),
        if (widget.animated)
          AnimatedContainer(
            height: widget.barHeight,
            width: _lineWidth,
            duration: const Duration(milliseconds: 0),
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(
              color: widget.barColor,
              borderRadius: BorderRadius.circular(8),
            ),
          )
        else
          Container(
            height: widget.barHeight,
            decoration: BoxDecoration(
              color: widget.barColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
      ],
    );
  }

  void _updateBottomLineWidth() {
    final Size? size = _titleKey.currentContext?.size;
    if (size == null || _lineWidth == size.width) return;
    setState(() => _lineWidth = size.width);
  }
}
