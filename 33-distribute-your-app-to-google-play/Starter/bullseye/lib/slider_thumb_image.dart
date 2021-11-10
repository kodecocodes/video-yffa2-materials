import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SliderThumbImage extends SliderComponentShape {
  SliderThumbImage(this.image);

  final ui.Image? image;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0, 0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final thumbImage = image;
    if (thumbImage != null) {
      final canvas = context.canvas;
      final imageOffset = Offset(
        center.dx - (thumbImage.width / 2),
        center.dy - (thumbImage.height / 2),
      );
      var paint = Paint();
      paint.filterQuality = FilterQuality.high;
      canvas.drawImage(thumbImage, imageOffset, paint);
    }
  }
}
