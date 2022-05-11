import 'package:fd_fitness_app/presentation/appearence/utils/scroll/disable_over_scroll_behavior.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseFdWidget extends StatelessWidget {
  const BaseFdWidget({
    Key? key,
    this.appBar,
    this.child,
    this.title,
    this.scrollPadding,
    this.contentPadding,
    this.enabledScroll = true,
    this.withLeftElement = true,
  }) : super(key: key);

  final AppBar? appBar;
  final Widget? child;
  final String? title;
  final bool enabledScroll;

  //If false then this will use the background image without the purple and the blue squiggle on the left.
  final bool withLeftElement;
  final EdgeInsetsGeometry? scrollPadding, contentPadding;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const DisableOverScrollBehavior(),
      child: SingleChildScrollView(
        padding: scrollPadding,
        child: SizedBox(
          height: enabledScroll ? null : MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  withLeftElement ? 'assets/images/bg.png' : 'assets/images/bg_without_left_element.png',
                  fit: BoxFit.fill,
                ),
              ),
              enabledScroll ? _mainContent() : Positioned.fill(child: _mainContent()),
            ],
          ),
        ),
      ),
    );
  }

  SafeArea _mainContent() {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (appBar != null)
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20.0),
              child: appBar!,
            ),
          enabledScroll ? _content() : Expanded(child: _content()),
        ],
      ),
    );
  }

  Widget _content() {
    final bool hasTitle = title?.isNotEmpty ?? false;
    final bool hasChildWidget = child != null;
    return Padding(
      padding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (hasTitle) AnimatedTitleText(title!),
          if (hasChildWidget) const Indent(vertical: 40),
          if (hasChildWidget) enabledScroll ? child! : Expanded(child: child!),
        ],
      ),
    );
  }
}
