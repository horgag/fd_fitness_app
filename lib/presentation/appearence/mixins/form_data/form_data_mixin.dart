import 'package:flutter/material.dart';

/// Helps to manage Form and TextFormField on the screen
mixin FormDataMixin<T extends StatefulWidget> on State<T> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(debugLabel: '_formKey');

  @protected
  List<FocusNode> get focusNodes => _focusNodes;

  /// Used for smoothly changing focus from field to another
  late final List<FocusNode> _focusNodes;

  @protected
  List<TextEditingController> get controllers => _controllers;
  late final List<TextEditingController> _controllers;

  /// Should be overridden to generate needed amount of FocusNode's`
  @protected
  int get amountOfFocusNodes => 0;

  AutovalidateMode _autovalidate = AutovalidateMode.disabled;

  @override
  void initState() {
    super.initState();
    _focusNodes = List<FocusNode>.generate(
      amountOfFocusNodes,
      (int index) => FocusNode(debugLabel: 'focusNode_$index'),
    );
    _controllers = List<TextEditingController>.generate(amountOfFocusNodes, (int index) => TextEditingController());
  }

  @override
  void dispose() {
    _disposeAllFocusNodes();
    _controllers.forEach((TextEditingController element) => element.dispose());
    super.dispose();
  }

  /// [Form] that can be used on applied screen
  @protected
  Widget formWidget() {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidate,
      child: Column(children: textFormFields(_focusNodes)),
    );
  }

  /// [Form] that can be used on applied screen
  @protected
  Widget formRowWidget() {
    return Form(
      key: _formKey,
      autovalidateMode: _autovalidate,
      child: Row(children: textFormFields(_focusNodes)),
    );
  }

  @protected
  void onFieldSubmitted(String _) {
    FocusNode? currentFocus;
    try {
      currentFocus = _focusNodes.firstWhere((FocusNode item) => item.hasFocus);
    } catch (e) {
      currentFocus = null;
    }
    // in case if focus node is the last one
    if (currentFocus == null || _focusNodes.last == currentFocus) {
      unfocusAllFocusNodes();
      onLastFieldSubmitted.call();
    } else {
      // change focus to another TextFormField
      final int nextIndex = _focusNodes.indexOf(currentFocus) + 1;
      currentFocus.unfocus();
      _focusNodes[nextIndex].requestFocus();
    }
  }

  @protected
  void onBackwardDelete([String _ = '']) {
    FocusNode? currentFocus;
    try {
      currentFocus = _focusNodes.firstWhere((FocusNode item) => item.hasFocus);
    } catch (e) {
      currentFocus = null;
    }
    // in case if focus node is the last one
    if (currentFocus == null || _focusNodes.first == currentFocus) {
      unfocusAllFocusNodes();
      onLastFieldSubmitted.call();
    } else {
      // change focus to another TextFormField
      final int nextIndex = _focusNodes.indexOf(currentFocus) - 1;
      currentFocus.unfocus();
      _focusNodes[nextIndex].requestFocus();
    }
  }

  /// Validates form and returns true in case of valid data
  @protected
  bool validateForm() {
    if (!_formKey.currentState!.validate()) {
      setState(() => _autovalidate = AutovalidateMode.always);
      return false;
    }
    return true;
  }

  @protected
  void unfocusAllFocusNodes() => _focusNodes.forEach((FocusNode focusNode) => focusNode.unfocus());

  void _disposeAllFocusNodes() => _focusNodes.forEach((FocusNode focusNode) => focusNode.dispose());

  /// It's called when latest focus node is pressed
  @protected
  void onLastFieldSubmitted() {}

  /// List of [TextFormField]s that will be placed within the [formWidget]
  /// [focusNodes] is [_focusNodes] to use with [TextFormField]s
  @protected
  List<Widget> textFormFields(List<FocusNode> _);
}
