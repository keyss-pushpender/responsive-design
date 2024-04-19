import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_design/elements/navigation_class.dart';
part 'navigation_event.dart';

class SideNavigationBloc extends Bloc<NavigationEvent, SideNavigation> {
  SideNavigationBloc() : super(navigationList.first) {
    on<NavigateTo>((event, emit) {
      emit(event.navigation);
    });
  }
}
