import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_design/elements/rp_app_bar.dart';
import 'package:responsive_design/elements/rp_drawer.dart';
import '../elements/rp_body.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            constraints: const BoxConstraints(
              maxWidth: 200.0,
              minWidth: 100.0
            ),
              child: const RPDrawer()),
          const Expanded(
            flex: 9,
            child: Column(
              children: [
                RPAppBar(),
                Expanded(child: Center(child: RPBody())),
              ],
            )
          ),
        ],
      ),
    );
  }
}
