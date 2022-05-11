import 'dart:io';

import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/network_image.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/list_items/photo_preview/base_placeholder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImagePreviewPlaceholder extends StatelessWidget {
  const ImagePreviewPlaceholder({Key? key, this.path, this.onRemovePressed, this.url}) : super(key: key);

  final String? path, url;
  final VoidCallback? onRemovePressed;

  static const double previewImageHeight = 105, previewImageWeight = 103;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: previewImageHeight,
      width: previewImageWeight,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: <Widget>[
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: BasePlaceholder(
              height: previewImageHeight - 8,
              width: previewImageWeight - 8,
              child: url != null
                  ? FdNetworkImage(
                      imageUrl: url!,
                      fit: BoxFit.fill,
                    )
                  : path != null
                      ? Image.file(
                          File(path!),
                          fit: BoxFit.fill,
                        )
                      : const Indent(),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: GestureDetector(
                onTap: () {
                  onRemovePressed?.call();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[BoxShadow(color: Colors.grey[200]!, blurRadius: 3, spreadRadius: 2)],
                  ),
                  child: Image.asset(
                    'assets/images/crossicon.png',
                    height: 30,
                    width: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
