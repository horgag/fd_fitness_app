import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ReadyTypeBuilder<T extends Object> extends StatelessWidget {
  const ReadyTypeBuilder({
    Key? key,
    required this.getIt,
    required this.readyBuilder,
    required this.notReadyBuilder,
    this.handleError,
  }) : super(key: key);

  final GetIt getIt;
  final Function(Object)? handleError;
  final Widget Function(BuildContext, T) readyBuilder;
  final Widget Function(BuildContext) notReadyBuilder;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: getIt.isReady<T>(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        final T? instance = _tryGetType();
        if (snapshot.hasData || instance != null)
          return readyBuilder(context, instance!);
        else
          return notReadyBuilder(context);
      },
    );
  }

  T? _tryGetType() {
    try {
      return getIt<T>();
    } catch (e) {
      handleError?.call(e);
      return null;
    }
  }
}
