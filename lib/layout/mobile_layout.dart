import 'package:flutter/material.dart';
import 'package:responsive_design/elements/rp_app_bar.dart';
import 'package:responsive_design/elements/rp_body.dart';
import 'package:responsive_design/elements/rp_drawer.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: RPAppBar(),
      drawer: Drawer(child: RPDrawer()),
      body: RPBody()
    );
  }
}