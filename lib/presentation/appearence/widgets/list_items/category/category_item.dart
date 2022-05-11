import 'package:fd_fitness_app/presentation/appearence/styles/app_colors.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/common_properties.dart';
import 'package:fd_fitness_app/presentation/appearence/styles/text_styles.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/animated_title_text.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/common/indent.dart';
import 'package:fd_fitness_app/presentation/appearence/widgets/image/network_image.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.imageUrl,
    required this.iconPath,
    required this.title,
    this.onPress,
  }) : super(key: key);
  final String imageUrl, title, iconPath;
  final Function()? onPress;
  static const double _itemHeight = 107, _imageHeight = 130, _arrowIconSize = 84;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _itemHeight,
      decoration: const BoxDecoration(borderRadius: mediumBorderRadius, color: AppColors.selectedBackground),
      margin: const EdgeInsetsDirectional.only(bottom: 20),
      child: InkWell(
        onTap: onPress,
        borderRadius: mediumBorderRadius,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Positioned.fill(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _image(),
                  const Indent(horizontal: 38),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _title(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: _imageHeight - _arrowIconSize / 2,
              child: _arrow(iconPath),
            ),
          ],
        ),
      ),
    );
  }

  Widget _image() => _roundedImage(
        child: imageUrl.isEmpty
            ? const Indent()
            : FdNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.fill,
                builder: (_, Widget child) => _roundedImage(child: child),
              ),
      );

  Widget _arrow(String icon) {
    return Image.asset(icon, width: _arrowIconSize, height: _arrowIconSize);
  }

  Widget _title() => AnimatedTitleText(
        title,
        textStyle: nunitoBold40.copyWith(fontSize: 24),
        barHeight: 3.0,
      );

  Widget _roundedImage({required Widget child}) {
    return ClipRRect(
      borderRadius: mediumBorderRadius,
      child: SizedBox(
        width: _imageHeight,
        height: _itemHeight,
        child: child,
      ),
    );
  }
}
