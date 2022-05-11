import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fd_fitness_app/domain/models/inspiration/inspiration.dart';
import 'package:fd_fitness_app/presentation/appearence/mixins/video/video_list_mixin.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/utils/scroll/disable_over_scroll_behavior.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/video/circle_video_item.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/video/controller/fd_video_controller.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:fd_fitness_app/presentation/screens/introduction/bloc/introduction_bloc.dart';

class InspirationComponent extends StatefulWidget {
  const InspirationComponent({Key? key, this.onPressed}) : super(key: key);
  final Function()? onPressed;

  @override
  _InspirationComponentState createState() => _InspirationComponentState();
}

class _InspirationComponentState extends State<InspirationComponent> with VideoListMixin<InspirationComponent> {
  IntroductionBloc get _bloc => context.read<IntroductionBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const GetAllInspirationsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseFdWidget(
        title: 'Some FD Way Inspiration',
        enabledScroll: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: _content()),
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
    final bool isInspirationResult = state is AllInspirationsResultState;
    if (isInspirationResult) {
      final BuiltList<Inspiration>? inspirations = state.inspirations;
      if (inspirations?.isNotEmpty ?? false) {
        return _sliderContent(inspirations!);
      } else {
        return _subtitleWithContent(
          child: const Expanded(
            child: Center(
              child: Text('No available inspirations', style: poppinsNormal16),
            ),
          ),
        );
      }
    } else {
      return _subtitleWithContent(
        child: const Expanded(
          child: Center(
            child: FdLoader(),
          ),
        ),
      );
    }
  }

  Widget _sliderContent(BuiltList<Inspiration> inspirations) {
    return ScrollConfiguration(
      behavior: const DisableOverScrollBehavior(),
      child: SingleChildScrollView(
        child: _subtitleWithContent(child: _videoGrid(inspirations)),
      ),
    );
  }

  Widget _subtitleWithContent({required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Check out some of the amazing inspirational people that have made the FD Way so special.',
          style: poppinsNormal16,
        ),
        child,
      ],
    );
  }

  GridView _videoGrid(BuiltList<Inspiration> inspirations) {
    _initFdVideoControllers(inspirations);
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 17,
        crossAxisSpacing: 23,
        mainAxisExtent: 134,
      ),
      itemCount: inspirations.length,
      shrinkWrap: true,
      padding: const EdgeInsetsDirectional.only(top: 30),
      itemBuilder: (_, int index) => _itemBuilder(inspirations[index]),
    );
  }

  Widget _itemBuilder(Inspiration inspiration) {
    return CircleVideoItem(
      title: inspiration.title ?? '',
      videoUrl: inspiration.video?.url ?? '',
      thumbnail: inspiration.image?.url ?? '',
      fdVideoController: fdVideoControllers[inspiration.id],
      onPlayPauseTapped: () => stopOtherPlayers(inspiration.id),
    );
  }

  void _initFdVideoControllers(BuiltList<Inspiration> inspirations) {
    inspirations.where((Inspiration item) => item.video?.url?.isNotEmpty ?? false).forEach((Inspiration element) {
      fdVideoControllers[element.id] ??= FdVideoController();
    });
  }
}
