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

// ---------- COMMON BASE WITH SEPARATE SCAFFOLD AND DRAWER ----------
class MainBase extends StatelessWidget {
  const MainBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          if (!RP.isMobileOrTab(context))
            Container(
                constraints: const BoxConstraints(maxWidth: 200.0, minWidth: 100.0),
                child: const RPDrawer()),
          Expanded(
            child: Scaffold(
              appBar: const RPAppBar(),
              drawer: RP.isMobileOrTab(context)
                  ? const Drawer(child: RPDrawer())
                  : null,
              bottomNavigationBar: RP.isMobileOrTab(context)
                  ? const BottomNavigation()
                  : null,
              body: const Center(child: RPBody())
            ),
          )
        ],
      ),
    );
  }
}

// ---------- COMMON BASE WITH TOP PARENT SCAFFOLD ----------
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


// ---------- TOP TREE DISTRIBUTION ----------
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

// ---------- EXPERIMENT WITH CUSTOM SINGLE CHILD LAYOUT ----------
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

