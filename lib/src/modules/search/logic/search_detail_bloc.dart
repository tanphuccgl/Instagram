import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/models/search_user_name_model.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part "search_detail_state.dart";

class SearchDetailBloc extends Cubit<SearchDetailState> {
  SearchDetailBloc() : super(const SearchDetailState());

  final Domain _domain = Domain();

  void onSubmitSearch() async {
    final value = await _domain.profile.getSearchUserName(state.username);
    if (value.isSuccess) {
      emit(state.copyWith(data: value.data));
    } else {
      XSnackBar.show(msg: "Error");
    }
  }

  void changeUsernam(String value) => emit(state.copyWith(username: value));
}
