import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideToLeftRoute extends PageRoute<dynamic> {
  SlideToLeftRoute({
    required this.builder,
    this.duration = 350,
    RouteSettings? settings,
  }) : super(settings: settings, fullscreenDialog: false);

  final WidgetBuilder builder;
  int duration;

  @override
  bool get opaque => false;

  @override
  Color? get barrierColor => Colors.white;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: duration);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    final Widget result = builder(context);
    const Offset startOffset = Offset(1.0, 0.0), endOffset = Offset.zero;
    return SlideTransition(
      position: Tween<Offset>(
        begin: startOffset,
        end: endOffset,
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: endOffset,
          end: startOffset,
        ).animate(secondaryAnimation),
        child: FadeTransition(
          opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
          child: Semantics(
            scopesRoute: true,
            explicitChildNodes: true,
            child: result,
          ),
        ),
      ),
    );
  }
}
