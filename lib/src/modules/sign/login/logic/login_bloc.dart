import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/models/prefs.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part "login_state.dart";

class LoginBloc extends Cubit<LoginState> {
  LoginBloc() : super(const LoginState());
  final Domain _domain = Domain();

  void onLogin() async {
    BaseLoading.show();

    final value = await _domain.account
        .postLogin(username: state.username, password: state.password);
    if (value.isSuccess) {
      XCoordinator.showDashboard();
      Prefs.setTokenAccount(value.data?.token ?? "");
    } else {
      XSnackBar.show(msg: "Error");
    }

    BaseLoading.dismiss();
  }

  void changedUsername(String username) {
    emit(state.copyWith(username: username.trim()));
  }

  void changedPassword(String password) {
    emit(state.copyWith(password: password.trim()));
  }
}
