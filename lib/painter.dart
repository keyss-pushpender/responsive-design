import 'dart:ui';

import 'package:flutter/material.dart';

class Draw extends CustomPainter {
  final Offset offset;
  final double radius;
  Draw(this.offset, this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
    ..color = const Color(0xFF75fd71)
    ..imageFilter = ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0, tileMode: TileMode.decal);
    canvas.drawCircle(offset, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}