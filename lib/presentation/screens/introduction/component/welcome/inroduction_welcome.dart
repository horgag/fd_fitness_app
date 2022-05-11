import 'package:built_collection/built_collection.dart';
import 'package:fd_fitness_app/domain/models/asset_models/asset_model.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_play_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/fd_video_player.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/introduction/bloc/introduction_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IntroductionWelcomeComponent extends StatefulWidget {
  const IntroductionWelcomeComponent({Key? key, this.onPressed}) : super(key: key);
  final Function()? onPressed;

  @override
  _IntroductionWelcomeComponentState createState() => _IntroductionWelcomeComponentState();
}

class _IntroductionWelcomeComponentState extends State<IntroductionWelcomeComponent> {
  IntroductionBloc get _bloc => context.read<IntroductionBloc>();
  final FdVideoController _fdVideoController = FdVideoController();

  @override
  void initState() {
    super.initState();
    _bloc.add(const GetWelcomeVideoEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseFdWidget(
        title: 'Welcome to the FD Way',
        enabledScroll: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Flexible(
                    child: Text(
                      'Please watch the introduction video below and welcome to the FD Way',
                      style: poppinsNormal16,
                    ),
                  ),
                  const Indent(vertical: 40),
                  Expanded(child: _content()),
                ],
              ),
            ),
            const Indent(vertical: 10),
            FdEleveatedButton(
              title: 'Next',
              onPressed: widget.onPressed ?? () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _content() {
    final IntroductionState state = context.watch<IntroductionBloc>().state;
    final bool isWelcomeState = state is WelcomeVideoResultState;
    if (isWelcomeState) {
      final BuiltList<AssetModel>? welcomeAssets = state.assets;
      if (welcomeAssets?.isNotEmpty ?? false) {
        final AssetModel? imageAsset = welcomeAssets!.assetByType(AssetModel.imageMimeKey);
        final AssetModel? videoAsset = welcomeAssets.assetByType(AssetModel.videoMimeKey);
        return Container(
          height: 315,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: FdVideoPlayer(
                  showExitButton: true,
                  url: videoAsset!.url!,
                  thumbnail: imageAsset!.url!,
                  fdVideoController: _fdVideoController,
                ),
              ),
              Positioned.fill(
                child: Center(
                  child: FdPlayButton(
                    onTap: () => _fdVideoController.enterFullScreen(),
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        return const Center(
          child: Text(
            'No available video',
            style: poppinsNormal16,
          ),
        );
      }
    } else {
      return const Center(
        child: FdLoader(),
      );
    }
  }
}
