import 'package:flutter/material.dart';

import 'package:fd_fitness_app/domain/models/user_model/health/health_issues_type.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/checkbox/fd_checkboxlist.dart';
import 'package:fd_fitness_app/presentation/base/widget/base_fd_widget.dart';

class AnyIssuesComponent extends StatefulWidget {
  const AnyIssuesComponent({this.onPressed, this.onChange, this.appBar, this.selectedType, this.onBackPressed});

  final AppBar? appBar;
  final List<HealthIssuesType>? selectedType;
  final VoidCallback? onPressed;
  final Function(Map<HealthIssuesType, bool>)? onChange;
  final Function()? onBackPressed;

  @override
  _AnyIssuesComponentState createState() => _AnyIssuesComponentState();
}

class _AnyIssuesComponentState extends State<AnyIssuesComponent> {
  @override
  Widget build(BuildContext context) {
    return BaseFdWidget(
      appBar: widget.appBar,
      title: 'Do you have any health issues?',
      enabledScroll: false,
      child: FdCheckboxList<HealthIssuesType>(
        isFieldsMandatory: true,
        subtitle:
            'Please let us know if you have any health issues that may affect your ability to perform exercise or that needs to be understood for your diet.',
        choices: HealthIssuesType.values,
        initialChoices: widget.selectedType,
        buttonTitle: 'Select',
        titleBuilder: (HealthIssuesType item) {
          if (item == HealthIssuesType.thyroidCondition)
            return 'A thyroid condition';
          else if (item == HealthIssuesType.irritableBowelSyndrom)
            return 'Irritable bowel syndrome';
          else if (item == HealthIssuesType.abnormalBloodPressure)
            return 'Abnormal blood pressure';
          else if (item == HealthIssuesType.diabetes) return 'Diabetes';
          return 'None';
        },
        onChange: widget.onChange,
        onPressed: (_) => widget.onPressed?.call(),
      ),
    );
  }
}
