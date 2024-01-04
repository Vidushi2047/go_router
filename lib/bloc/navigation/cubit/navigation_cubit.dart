import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());
  void ChangeScreen(index) {
    emit(NavigationState(index: index));
  }
}
