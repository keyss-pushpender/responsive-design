part of 'navigation_bloc.dart';

sealed class NavigationEvent {}

class NavigateTo extends NavigationEvent {
  Navigation navigation;
  NavigateTo(this.navigation);
}
