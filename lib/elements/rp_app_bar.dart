import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_design/BLoCs/navigation_bloc.dart';
import 'navigation_class.dart';

class RPAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RPAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: BlocBuilder<NavigationBloc, Navigation>(
        builder: (BuildContext context, navigation) => Text(navigation.name),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 55.0);
}
