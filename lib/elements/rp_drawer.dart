import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_design/BLoCs/navigation_bloc.dart';
import '../responsive_view.dart';
import 'navigation_class.dart';

class RPDrawer extends StatelessWidget {
  const RPDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        for(Navigation nav in navigationList)
          ListTile(
            leading: Icon(nav.icon),
            title: Text(nav.name),
            onTap: () {
              if(!RP.isWeb(context)) {
                Navigator.pop(context);
              }
              context.read<NavigationBloc>().add(NavigateTo(nav));
            },
          ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Logout'),
          onTap: () {
            // Logout logic
          },
        ),
      ],
    );
  }
}

