import 'package:fd_fitness_app/presentation/appearence/widgets/text_field/fd_number_text_field.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';
import 'package:flutter/material.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkboxlist.dart';
import 'package:fd_fitness_app/domain/models/user_model/health/activity_level_type.dart';

class NormalDayActivityComponent extends StatefulWidget {
  const NormalDayActivityComponent({
    Key? key,
    required this.onChange,
    this.onPressed,
    this.appBar,
    this.selectedType,
  }) : super(key: key);

  final AppBar? appBar;
  final ActivityLevelType? selectedType;
  final VoidCallback? onPressed;
  final Function(String?) onChange;

  @override
  _NormalDayActivityComponentState createState() => _NormalDayActivityComponentState();
}

class _NormalDayActivityComponentState extends State<NormalDayActivityComponent> {
  late final TextEditingController _controller = TextEditingController();
  late final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BaseFdWidget(
      title: 'How many hours exercise do you normally do in a day?',
      enabledScroll: false,
      appBar: widget.appBar,
      child: FdNumberTextField(
        suffixText: 'Hours',
        width: 170,
        controller: _controller,
        focusNode: _focusNode,
        onChanged: widget.onChange,
      ),
    );
  }
}
