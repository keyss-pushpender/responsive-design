import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_design/BLoCs/navigation_bloc.dart';
import 'navigation_class.dart';

class RPBody extends StatelessWidget {
  const RPBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, Navigation>(builder: (BuildContext context, navigation) {
      return Center(child: navigation.child);
    });
  }
}
