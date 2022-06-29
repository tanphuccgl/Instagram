import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part "check_account_state.dart";

class CheckAccountBloc extends Cubit<CheckAccountState> {
  CheckAccountBloc()
      : super(CheckAccountState(
            username:
                GetIt.I<ProfileBloc>().state.data.idAccount?.username ?? ""));
  final Domain _domain = Domain();

  void onCheckUsername() async {
    emit(state.copyWith(isLoading: true));
    final value = await _domain.account.checkUsername(state.username);
    if (value.isSuccess) {
      emit(state.copyWith(isCheck: true));
    } else {
      emit(state.copyWith(isCheck: false));

      XSnackBar.show(msg: "The username ${state.username} is not avaliable");
    }

    emit(state.copyWith(isLoading: false));
  }

  void changeUsername(String value) => emit(state.copyWith(username: value));
}
