import 'package:flutter/material.dart';

class UiHelper {
  static const double bottomNavigationBarHeight = 56;

  static double getBottomNavBarHeight(BuildContext context) => bottomNavigationBarHeight + MediaQuery.of(context).padding.bottom;
  static double getBottomPadding(BuildContext context) => MediaQuery.of(context).padding.bottom;
}
