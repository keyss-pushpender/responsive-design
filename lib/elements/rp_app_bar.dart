import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_design/BLoCs/navigation/navigation_bloc.dart';
import 'package:responsive_design/BLoCs/searchBarCubit/search_cubit.dart';
import 'package:responsive_design/constants.dart';
import 'package:responsive_design/utils.dart';
import 'package:responsive_design/widgets/app_search_bar.dart';
import '../responsive_view.dart';
import 'navigation_class.dart';

class RPAppBar extends StatefulWidget implements PreferredSizeWidget {
  const RPAppBar({super.key});

  @override
  State<RPAppBar> createState() => _RPAppBarState();
  @override
  Size get preferredSize => const Size(double.infinity, 55.0);
}

class _RPAppBarState extends State<RPAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3.0,
      backgroundColor: Colors.cyanAccent,
      title: BlocBuilder<SideNavigationBloc, SideNavigation>(
        builder: (BuildContext context, navigation) => Text(navigation.name),
      ),
      actions: [
        BlocBuilder<SearchCubit, bool>(
            builder: (BuildContext context, show) {
              if(show) {
                return SearchBarApp(
                  onSearch: () {},
                  onCancel: () {
                    context.read<SearchCubit>().toggleSearchBar();
                  },
                );
              }
              return Container();
            }),
        if (RP.isSizeGreaterThan(context, tabBreakPoint)) ...[
          BlocBuilder<SearchCubit, bool>(
              builder: (BuildContext context, show) {
                if(!show) {
                  return IconButton(
                      onPressed: () {
                        context.read<SearchCubit>().toggleSearchBar();
                      },
                      icon: const Icon(Icons.search));
                }
                return Container();
              }),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          hGap(),
        ],
      ],
    );
  }
}
