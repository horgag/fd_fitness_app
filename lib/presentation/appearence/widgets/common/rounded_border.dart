import 'package:flutter/material.dart';

//A border that makes the ends of the lines rounded if the border does not wrap around the entire Container
class RoundedBorder extends Border {
  const RoundedBorder({
    BorderSide top = BorderSide.none,
    BorderSide right = BorderSide.none,
    BorderSide bottom = BorderSide.none,
    BorderSide left = BorderSide.none,
  }) : super(
          top: top,
          right: right,
          bottom: bottom,
          left: left,
        );

  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    TextDirection? textDirection,
    BoxShape shape = BoxShape.rectangle,
    BorderRadius? borderRadius,
  }) {
    // We draw the borders as filled shapes, unless the borders are hairline
    // borders, in which case we use PaintingStyle.stroke, with the stroke width
    // specified here.
    final Paint paint = Paint()
      ..strokeWidth = 0.0
      ..strokeCap = StrokeCap.round;

    final Path path = Path();
    _drawRoundedTop(canvas, rect, paint, path);
    _drawRoundedRight(canvas, rect, paint, path);
    _drawRoundedBottom(canvas, rect, paint, path);
    _drawRoundedLeft(canvas, rect, paint, path);
  }

  void _drawRoundedTop(Canvas canvas, Rect rect, Paint paint, Path path) {
    switch (top.style) {
      case BorderStyle.solid:
        paint.color = top.color;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = top.width;

        path.reset();
        path.moveTo(rect.left, rect.top);
        path.lineTo(rect.right, rect.top);
        canvas.drawPath(path, paint);
        break;
      case BorderStyle.none:
        break;
    }
  }

  void _drawRoundedRight(Canvas canvas, Rect rect, Paint paint, Path path) {
    switch (right.style) {
      case BorderStyle.solid:
        paint.color = right.color;
        paint.strokeCap = StrokeCap.round;
        paint.style = PaintingStyle.stroke;
        paint.strokeWidth = right.width;

        path.reset();
        path.moveTo(rect.right, rect.top);
        path.lineTo(rect.right, rect.bottom);
        canvas.drawPath(path, paint);
        break;
      case BorderStyle.none:
        break;
    }
  }

  void _drawRoundedBottom(Canvas canvas, Rect rect, Paint paint, Path path) {
    switch (bottom.style) {
      case BorderStyle.solid:
        paint
          ..color = bottom.color
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = bottom.width;
        path
          ..reset()
          ..moveTo(rect.right, rect.bottom)
          ..lineTo(rect.left, rect.bottom);
        canvas.drawPath(path, paint);
        break;
      case BorderStyle.none:
        break;
    }
  }

  void _drawRoundedLeft(Canvas canvas, Rect rect, Paint paint, Path path) {
    switch (left.style) {
      case BorderStyle.solid:
        paint
          ..color = left.color
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = left.width;

        path.reset();
        path.moveTo(rect.left, rect.bottom);
        path.lineTo(rect.left, rect.top);
        canvas.drawPath(path, paint);
        break;
      case BorderStyle.none:
        break;
    }
  }
}
