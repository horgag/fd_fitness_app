import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:markdown/markdown.dart' as markdown;

class FdMarkdown extends StatelessWidget {
  const FdMarkdown({Key? key, required this.markdownData}) : super(key: key);
  final String markdownData;

  @override
  Widget build(BuildContext context) {
    final String htmlData = markdown.markdownToHtml(
      markdownData,
      inlineSyntaxes: <markdown.InlineSyntax>[
        markdown.InlineHtmlSyntax(),
      ],
    );
    return Html(
      data: htmlData,
      style: <String, Style>{
        'h2': Style.fromTextStyle(nunitoBold40.copyWith(fontSize: 24)),
        'h4': Style.fromTextStyle(nunitoBold16),
        'p': Style.fromTextStyle(poppinsNormal16),
      },
    );
  }
}
