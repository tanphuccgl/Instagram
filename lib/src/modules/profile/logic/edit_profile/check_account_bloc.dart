import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part "check_account_state.dart";

class CheckAccountBloc extends Cubit<CheckAccountState> {
  CheckAccountBloc() : super(const CheckAccountState());
  final Domain _domain = Domain();

  void onCheckUsername() async {
    emit(state.copyWith(isLoading: true));
    final value = await _domain.account.checkUsername(state.username);
    if (value.isSuccess) {
      emit(state.copyWith(canUse: true));
    } else {
      emit(state.copyWith(canUse: false));

      XSnackBar.show(msg: "The username ${state.username} is not avaliable");
    }

    emit(state.copyWith(isLoading: false));
  }

  void changeUsername(String value) => emit(state.copyWith(username: value));
}
