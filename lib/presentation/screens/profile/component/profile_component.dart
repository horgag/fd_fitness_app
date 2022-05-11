import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/category/category_item.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/base_fd_circular_progress_indicator.dart';
import 'package:fd_fitness_app/presentation/navigation/navigator_utils.dart';
import 'package:fd_fitness_app/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:fd_fitness_app/util/app_version_service/app_version_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileComponent extends StatefulWidget {
  const ProfileComponent({Key? key}) : super(key: key);

  @override
  _ProfileComponentState createState() => _ProfileComponentState();
}

class _ProfileComponentState extends State<ProfileComponent> {
  ProfileBloc get _bloc => context.read<ProfileBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (BuildContext context, ProfileState state) {
        if (state is SignedOutState) NavigatorUtils.returnToWelcomeScreen(context);
      },
      builder: (BuildContext context, ProfileState state) {
        final bool isLoading = state is LoadingProfileState;
        return isLoading
            ? const BaseFdCircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  _topContent(),
                  _settingsContent(),
                  Text(
                    'Version: ${AppVersionService().getVersion()}',
                    style: poppinsNormal16.copyWith(fontSize: 12),
                  ),
                ],
              );
      },
    );
  }

  Widget _topContent() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CategoryItem(
          imageUrl: _bloc.getProgressButtonImageUrl(),
          title: 'Progress',
          onPress: () => NavigatorUtils.goToProgressScreen(context),
          iconPath: 'assets/images/next.png',
        ),
        CategoryItem(
          imageUrl: _bloc.getProgressButtonImageUrl(),
          title: 'Images Uploaded',
          onPress: () => NavigatorUtils.goToImageUploadsScreen(context),
          iconPath: 'assets/images/plus_rounded.png',
        ),
      ],
    );
  }

  Widget _settingsContent() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Profile Settings',
          style: nunitoBold24,
        ),
        const Indent(vertical: 28),
        _profileSettingsButton('Change daily activity', () {
          NavigatorUtils.goToActivityLevelScreen(context);
        }),
        const Indent(vertical: 30),
        _profileSettingsButton('Change health status', () {
          NavigatorUtils.goToHealthIssuesScreen(context);
        }),
        const Indent(vertical: 30),
        _profileSettingsButton('Change weight', () {
          NavigatorUtils.goToUpdateWeightScreen(context);
        }),
        const Indent(vertical: 30),
        _profileSettingsButton('Sign Out', () {
          _bloc.add(const SignOutEvent());
        }),
        const Indent(vertical: 60),
      ],
    );
  }

  Widget _profileSettingsButton(String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              label,
              style: poppinsNormal16,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.secondary,
            size: 24,
          ),
        ],
      ),
    );
  }
}
