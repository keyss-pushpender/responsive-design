import 'package:flutter/material.dart';

class RPAppBar extends StatelessWidget implements PreferredSizeWidget{
  const RPAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('home page'),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 55.0);
}
