import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<bool> {
  SearchCubit() : super(false);

  void toggleSearchBar() {
    emit(!state);
  }
}
