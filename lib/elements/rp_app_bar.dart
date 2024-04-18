import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_design/BLoCs/navigation_bloc.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/utils.dart';
import '../responsive_view.dart';
import 'navigation_class.dart';

class RPAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RPAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3.0,
      backgroundColor: Colors.cyanAccent,
      title: BlocBuilder<SideNavigationBloc, SideNavigation>(
        builder: (BuildContext context, navigation) => Text(navigation.name),
      ),
      actions: [
        if (RP.isSizeGreaterThan(context, tabBreakPoint)) ...[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          hGap(),
        ],
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 55.0);
}
