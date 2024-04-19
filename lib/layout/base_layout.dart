import 'package:flutter/material.dart';
import 'package:responsive_design/layout/tab_layout.dart';
import 'package:responsive_design/layout/web_layout.dart';
import 'package:responsive_design/responsive_view.dart';
import '../constants.dart';
import '../elements/rp_app_bar.dart';
import '../elements/rp_body.dart';
import '../elements/rp_bottom_navigation.dart';
import '../elements/rp_drawer.dart';
import 'mobile_layout.dart';

class CommonBase extends StatelessWidget {
  const CommonBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RP.isMobileOrTab(context)
          ? const RPAppBar()
          : null,
      drawer: RP.isMobileOrTab(context)
          ? const Drawer(child: RPDrawer())
          : null,
      bottomNavigationBar: RP.isMobileOrTab(context)
          ? const BottomNavigation()
          : null,
      body: Row(
        children: [
          if (!RP.isMobileOrTab(context))
            Container(
                constraints: const BoxConstraints(maxWidth: 200.0, minWidth: 100.0),
                child: const RPDrawer()),
          Expanded(
              flex: 9,
              child: Column(
                children: [
                  if (!RP.isMobileOrTab(context)) const RPAppBar(),
                  const Expanded(child: Center(child: RPBody())),
                ],
              )),
        ],
      ),
    );
  }
}

class Base extends StatelessWidget {
  const Base({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileBreakPoint) {
        return const MobileLayout();
      } else if (constraints.maxWidth < tabBreakPoint) {
        return const TabLayout();
      } else {
        return const WebLayout();
      }
    });
  }
}

class TestBase extends StatelessWidget {
  const TestBase({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSingleChildLayout(
        delegate: BaseClassDelegate()
    );
  }
}

class BaseClassDelegate extends SingleChildLayoutDelegate {
  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    throw UnimplementedError();
  }
}

