import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';

class StartJourneyComponent extends StatefulWidget {
  const StartJourneyComponent({Key? key, this.onPressed}) : super(key: key);
  final Function()? onPressed;
  @override
  _StartJourneyComponentState createState() => _StartJourneyComponentState();
}

class _StartJourneyComponentState extends State<StartJourneyComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseFdWidget(
        title: 'Start of your journey',
        enabledScroll: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type',
                      style: poppinsNormal16,
                    ),
                    const Indent(vertical: 30),
                    _content(
                      'Images',
                      'The importance of keeping visual references',
                      'The typography consists of two font families, for the headings use Nunito Bold and for the page copy use Poppins Regular. The font adds a modern feel to the brand and is clear when used on dark and light backgrounds.',
                    ),
                    const Indent(vertical: 30),
                    _content(
                      'Weighting in',
                      'The importance of keeping weight',
                      'The typography consists of two font families, for the headings use Nunito Bold and for the page copy use Poppins Regular. The font adds a modern feel to the brand and is clear when used on dark and light backgrounds.',
                    ),
                  ],
                ),
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

  Column _content(String title, String subtitle, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _titleWidget(title, hasPadding: false),
        const Indent(vertical: 8),
        Text(subtitle, style: nunitoBold16),
        const Indent(vertical: 8),
        Text(
          description,
          style: poppinsNormal16,
          softWrap: true,
          textAlign: TextAlign.start,
          overflow: TextOverflow.ellipsis,
          maxLines: 5,
        ),
      ],
    );
  }

  Padding _titleWidget(String title, {bool hasPadding = true}) {
    return Padding(
      padding: hasPadding ? const EdgeInsetsDirectional.only(start: 12.0) : EdgeInsetsDirectional.zero,
      child: Text(
        title,
        style: nunitoBold24.copyWith(height: 1),
        softWrap: true,
        maxLines: 2,
      ),
    );
  }
}
