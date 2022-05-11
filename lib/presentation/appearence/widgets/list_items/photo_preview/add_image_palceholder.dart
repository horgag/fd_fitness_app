import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/photo_preview/base_placeholder.dart';
import 'package:flutter/material.dart';

class AddImagePlaceholder extends StatelessWidget {
  const AddImagePlaceholder({Key? key, required this.onPressed}) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return BasePlaceholder(
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/plusicon.png',
            height: 38,
            width: 39,
            color: onPressed == null ? Colors.grey[300] : null,
          ),
          const Indent(vertical: 10),
          const Text('Upload Photo', style: poppinsNormal16),
        ],
      ),
    );
  }
}
