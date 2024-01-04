part of 'navigation_cubit.dart';

@immutable
class NavigationState {
  final int index;

  NavigationState({required this.index});
  factory NavigationState.initial() {
    return NavigationState(index: 0);
  }
}
