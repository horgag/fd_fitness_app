import 'package:flutter/material.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.title,
    required this.cal,
    this.isDismissable = false,
    this.onDismissPressed,
  }) : super(key: key);

  final int cal;
  final String title;
  final bool isDismissable;
  final ConfirmDismissCallback? onDismissPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        isDismissable && onDismissPressed != null
            ? Dismissible(
                key: ObjectKey(title),
                background: Container(color: Colors.redAccent.withOpacity(0.8)),
                confirmDismiss: (_) => onDismissPressed!.call(_),
                child: _foodItem(title: title, cal: cal),
              )
            : _foodItem(title: title, cal: cal),
      ],
    );
  }

  Widget _foodItem({required String title, required int cal}) {
    return Container(
      height: 81,
      color: AppColors.selectedBackground,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(vertical: 1.5),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              maxLines: 2,
              softWrap: true,
              style: poppinsNormal16,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Indent(horizontal: 18),
          Text('${cal}kcal', style: poppinsNormal16),
          isDismissable ? Image.asset('assets/images/minus_rounded.png') : Image.asset('assets/images/plus_rounded.png'),
        ],
      ),
    );
  }
}
