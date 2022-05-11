import 'dart:io';

import 'package:fd_fitness_app/presentation/appearence/widgets/loader/fd_loader.dart';
import 'package:flutter/material.dart';

typedef NetworkImageBuilder = Widget Function(BuildContext context, Widget child);

enum ImageSource { network, file }

class FdNetworkImage extends StatelessWidget {
  const FdNetworkImage({
    Key? key,
    required this.imageUrl,
    this.builder,
    this.fit = BoxFit.fitHeight,
    this.imageSource = ImageSource.network,
  }) : super(key: key);
  final String imageUrl;
  final NetworkImageBuilder? builder;
  final BoxFit fit;
  final ImageSource imageSource;

  @override
  Widget build(BuildContext context) {
    if (imageSource == ImageSource.network) {
      return Image.network(
        imageUrl,
        fit: fit,
        loadingBuilder: _loadingBuilder,
        frameBuilder: _frameBuilder,
      );
    } else {
      return Image.file(
        File(imageUrl),
        fit: fit,
        frameBuilder: _frameBuilder,
      );
    }
  }

  Widget _loadingBuilder(BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    final bool isLoading = (loadingProgress?.expectedTotalBytes ?? 0) != (loadingProgress?.cumulativeBytesLoaded ?? 0);
    final double value = (loadingProgress?.cumulativeBytesLoaded ?? 0) / (loadingProgress?.expectedTotalBytes ?? 1);
    return isLoading ? builder?.call(context, _circularLoaderByValue(value)) ?? _circularLoaderByValue(value) : child;
  }

  Center _circularLoaderByValue(double value) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FdLoader(value: value),
      ),
    );
  }

  Widget _frameBuilder(BuildContext _, Widget child, int? frame, bool? wasSynchronouslyLoaded) {
    return (wasSynchronouslyLoaded ?? false)
        ? child
        : AnimatedOpacity(
            child: child,
            opacity: frame == null ? 0 : 1,
            duration: const Duration(seconds: 1),
            curve: Curves.easeOut,
          );
  }

// TODO(V): implement error handling
// Widget _errorBuilder(BuildContext context, Object error, StackTrace? stackTrace) {
//   return builder?.call(context, _circularLoaderByValue(value)) ?? _circularLoaderByValue(value) : child
// }
}
