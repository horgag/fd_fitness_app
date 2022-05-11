import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';

mixin FlToastMixin<T extends StatefulWidget> on State<T> {
  final FToast _fToast = FToast();

  @override
  void initState() {
    super.initState();
    _fToast.init(context);
  }

  void showToast(String text) {
    _fToast.showToast(
      child: _toastWidget(text),
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 2),
    );
  }

  Widget _toastWidget(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      margin: EdgeInsetsDirectional.only(bottom: MediaQuery.of(context).padding.bottom),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.black87,
      ),
      child: Text(
        text,
        style: poppinsNormal16.copyWith(color: Colors.white),
      ),
    );
  }
}
