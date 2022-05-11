import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class FdBottomNavigationBar extends StatelessWidget {
  const FdBottomNavigationBar({Key? key, required this.selectedIndex, required this.onBottomNavigationBarItemTap}) : super(key: key);
  static const List<String> _icons = <String>[
    'assets/images/feedicon.png',
    'assets/images/plusicon.png',
    'assets/images/fdwayicon.png',
    'assets/images/testimonialsicon.png',
    'assets/images/profileicon.png',
  ];
  final int selectedIndex;
  final Function(int) onBottomNavigationBarItemTap;

  @override
  Widget build(BuildContext context) {
    final Map<int, String> iconMap = _icons.asMap();
    final double bottomPadding = MediaQuery.of(context).padding.bottom;
    return Container(
      height: UiHelper.getBottomNavBarHeight(context),
      color: Colors.white,
      padding: EdgeInsetsDirectional.only(bottom: bottomPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: iconMap.keys.map((int index) => _bottomNavBarItem(iconMap[index]!, selectedIndex == index, index)).toList(),
      ),
    );
  }

  Widget _bottomNavBarItem(String path, bool isSelected, int index) {
    const double borderRadius = 51;
    const double bottomNavBarItemSize = 55;
    const double iconSize = 30;
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      onTap: () => onBottomNavigationBarItemTap(index),
      child: SizedBox(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              width: bottomNavBarItemSize,
              height: bottomNavBarItemSize,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.selectedBackground : null,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isSelected ? AppColors.selectedBackground : null,
                shape: BoxShape.circle,
              ),
              child: Image.asset(path, width: iconSize, height: iconSize),
            ),
          ],
        ),
      ),
    );
  }
}
