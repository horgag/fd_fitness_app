import 'package:collection/collection.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/buttons/fd_elevated_button.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:flutter/material.dart';

import 'fd_checkbox.dart';

typedef CheckBoxValueUpdate<T> = Function(Map<T, bool>);

class FdCheckboxList<T> extends StatefulWidget {
  const FdCheckboxList({
    Key? key,
    required this.titleBuilder,
    required this.choices,
    this.multipleChoice = true,
    this.onChange,
    this.subtitle,
    this.buttonTitle,
    this.onPressed,
    this.initialChoice,
    this.initialChoices,
    this.isFieldsMandatory = false,
  }) : super(key: key);
  final String? subtitle, buttonTitle;
  final List<T> choices;
  final T? initialChoice;
  final List<T>? initialChoices;
  final String Function(T) titleBuilder;
  final CheckBoxValueUpdate<T>? onChange, onPressed;
  final bool isFieldsMandatory, multipleChoice;

  @override
  _FdCheckboxListState<T> createState() => _FdCheckboxListState<T>();
}

class _FdCheckboxListState<T> extends State<FdCheckboxList<T>> {
  late Map<T, bool> _mapChoices;

  bool get _hasSelections => _mapChoices.keys.any((T key) => _mapChoices[key]!);

  @override
  void initState() {
    super.initState();
    _mapChoices = Map<T, bool>.fromIterable(
      widget.choices,
      key: (dynamic key) => key,
      value: (dynamic value) => false,
    );
    if (widget.initialChoice != null) {
      _mapChoices[widget.initialChoice!] = true;
    } else if (widget.initialChoices?.isNotEmpty ?? false) {
      widget.initialChoices!.forEach((T element) {
        _mapChoices[element] = true;
      });
    }
  }

  @override
  void didUpdateWidget(covariant FdCheckboxList<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!ListEquality<T>().equals(_mapChoices.keys.toList(), widget.choices)) {
      _mapChoices = Map<T, bool>.fromIterable(
        widget.choices,
        key: (dynamic key) => key,
        value: (dynamic value) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.subtitle ??
                      'We would like to send you push notifications for your check ins, motivations and reminders about staying on track.',
                  style: poppinsNormal16,
                ),
                const Indent(vertical: 30),
                _choices(),
              ],
            ),
          ),
        ),
        FdEleveatedButton(
          enabled: widget.isFieldsMandatory ? _hasSelections : true,
          title: widget.buttonTitle ?? 'Next',
          onPressed: () => widget.onPressed?.call(_mapChoices),
        ),
      ],
    );
  }

  Widget _choices() {
    return Column(
      children: _mapChoices.keys
          .map(
            (T key) => _choice(key, _mapChoices[key]!),
          )
          .toList(),
    );
  }

  Widget _choice(T key, bool isSelected) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            FdCheckbox(
              value: isSelected,
              onChanged: (bool? value) {
                if (isSelected == value) return;
                final bool isSingleChoice = !widget.multipleChoice;
                if (isSingleChoice && value != null && !value) return;
                if (isSingleChoice) _mapChoices.keys.forEach((T key) => _mapChoices[key] = false);
                _mapChoices[key] = value ?? false;
                widget.onChange?.call(_mapChoices);
                setState(() {});
              },
            ),
            const Indent(horizontal: 10),
            Text(widget.titleBuilder(key), style: poppinsNormal16),
          ],
        ),
        const Indent(vertical: 30),
      ],
    );
  }
}
