import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../painter.dart';
import '../responsive_view.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              e.position.dx-(RP.isWeb(context)? 200: 0.0),
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
