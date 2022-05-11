import 'package:fd_fitness_app/domain/models/category/category.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/banners/no_internet_banner.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/add_your_meal/add_your_meal_screen.dart';
import 'package:fd_fitness_app/presentation/screens/category_screen/category_screen.dart';
import 'package:fd_fitness_app/presentation/screens/feed/feed_screen.dart';
import 'package:fd_fitness_app/presentation/screens/main/cubit/connectivity/connectivity_cubit.dart';
import 'package:fd_fitness_app/presentation/screens/main/cubit/main/main_bloc.dart';
import 'package:fd_fitness_app/presentation/screens/profile/profile_screen.dart';
import 'package:fd_fitness_app/presentation/screens/update_image_and_weight/update_image_and_weight_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fd_bottom_navigation_bar.dart';

class MainComponent extends StatefulWidget {
  const MainComponent({Key? key}) : super(key: key);

  @override
  _MainComponentState createState() => _MainComponentState();
}

class _MainComponentState extends State<MainComponent> {
  static const List<String> _titles = <String>[
    'Feed',
    'Add your meal',
    'Exercises & Workouts',
    'Testimonials & Inspiration',
    'Your profile',
  ];
  int _selectedScreenIndex = 0;

  ConnectivityCubit get _connectivityCubit => context.read<ConnectivityCubit>();

  MainCubit get _mainCubit => context.read<MainCubit>();

  @override
  void initState() {
    super.initState();
    _connectivityCubit.initConnectivity();
    _mainCubit.checkEndOfPhaseLaunch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<MainCubit, MainState>(
        listener: (BuildContext context, MainState state) {
          if (state is LastLaunchExpiredState) NavigatorUtils.goToUpdateImageAndWeightScreen(context, UpdateImageAndWeightType.endOfPhase);
        },
        child: BlocBuilder<ConnectivityCubit, ConnectivityState>(
          builder: (BuildContext context, ConnectivityState state) {
            final bool isNotConnected = state is NotConnected;
            return Stack(
              children: <Widget>[
                _bottomNavigationBarChild(
                  index: 0,
                  child: const FeedScreen(),
                  noWrap: true,
                  isNotConnected: isNotConnected,
                ),
                _bottomNavigationBarChild(
                  index: 1,
                  child: const AddYourMealScreen(),
                  noWrap: true,
                  isNotConnected: isNotConnected,
                ),
                _bottomNavigationBarChild(
                  index: 2,
                  child: const CategoryScreen(CategoryType.exercises),
                  isNotConnected: isNotConnected,
                ),
                _bottomNavigationBarChild(
                  index: 3,
                  child: const CategoryScreen(CategoryType.testimonials),
                  isNotConnected: isNotConnected,
                ),
                _bottomNavigationBarChild(
                  index: 4,
                  child: const ProfileScreen(),
                  isNotConnected: isNotConnected,
                ),
                _bottomNavigationBar(),
                isNotConnected ? const NoInternetBanner() : const Indent(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _bottomNavigationBarChild({required int index, required Widget child, bool isNotConnected = false, bool noWrap = false}) =>
      Visibility(
        visible: _selectedScreenIndex == index,
        child: noWrap
            ? Padding(
                padding: EdgeInsets.only(top: isNotConnected ? 90.0 : 0.0),
                child: child,
              )
            : BaseFdWidget(
                title: _titles[index],
                child: child,
                scrollPadding: EdgeInsets.only(top: isNotConnected ? 90.0 : 0.0),
              ),
      );

  Align _bottomNavigationBar() => Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: FdBottomNavigationBar(
          selectedIndex: _selectedScreenIndex,
          onBottomNavigationBarItemTap: (int index) {
            if (_selectedScreenIndex != index) setState(() => _selectedScreenIndex = index);
          },
        ),
      );
}
