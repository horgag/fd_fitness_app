import 'package:flutter/material.dart';

class Indent extends StatelessWidget {
  const Indent({Key? key, this.vertical = 0, this.horizontal = 0}) : super(key: key);

  final double vertical, horizontal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: vertical,
      width: horizontal,
    );
  }
}
