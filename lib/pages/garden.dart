import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_design/constants.dart';
import '../painter.dart';
import '../responsive_view.dart';

class Garden extends StatefulWidget {
  const Garden({super.key});

  @override
  State<Garden> createState() => _GardenState();
}

class _GardenState extends State<Garden> {
  SystemMouseCursor mouseCursor = SystemMouseCursors.grab;
  Offset offset = const Offset(0.0, 0.0);
  double radius = 100.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: mouseCursor,
      onHover: (e) {
        setState(() {
          offset = Offset(
              e.position.dx-(RP.isSizeLessThan(context, tabBreakPoint)? 0.0: 200.0),
              e.position.dy-55.0
          );
        });
      },
      child: GestureDetector(
        onTapDown: (e) {
          setState(() {
            mouseCursor = SystemMouseCursors.grabbing;
          });
        },
        onTapUp: (e) {
          setState(() {
            mouseCursor = SystemMouseCursors.grab;
          });
        },
        child: CustomPaint(
          foregroundPainter: Draw(offset, radius),
          child: Container(
            color: Colors.lightGreenAccent,
          ),
        ),
      ),
    );
  }
}
