import 'package:flutter/material.dart';

class DisableOverScrollBehavior extends ScrollBehavior {
  const DisableOverScrollBehavior();
  @override
  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) => child;

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) => const ClampingScrollPhysics();
}
