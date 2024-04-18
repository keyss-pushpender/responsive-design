import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_design/elements/navigation_class.dart';
part 'navigation_event.dart';

class NavigationBloc extends Bloc<NavigationEvent, Navigation> {
  NavigationBloc() : super(navigationList.first) {
    on<NavigateTo>((event, emit) {
      emit(event.navigation);
    });
  }
}
