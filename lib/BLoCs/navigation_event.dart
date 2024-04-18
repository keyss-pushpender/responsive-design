part of 'navigation_bloc.dart';

sealed class NavigationEvent {}

class NavigateTo extends NavigationEvent {
  SideNavigation navigation;
  NavigateTo(this.navigation);
}
