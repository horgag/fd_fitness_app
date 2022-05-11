import 'package:flutter/material.dart';

import 'fd_loader.dart';

class BaseFdCircularProgressIndicator extends StatelessWidget {
  const BaseFdCircularProgressIndicator();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: const Center(child: FdLoader()),
    );
  }
}
