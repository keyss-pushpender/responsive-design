import 'package:flutter/material.dart';
import 'package:responsive_design/layout/tab_layout.dart';
import 'package:responsive_design/layout/web_layout.dart';
import '../constants.dart';
import 'mobile_layout.dart';

class Base extends StatelessWidget {
  const Base({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < mobileBreakPoint) {
        return const MobileLayout();
      } else if(constraints.maxWidth < tabBreakPoint) {
        return const TabLayout();
      } else {
        return const WebLayout();
      }
    });
  }
}




