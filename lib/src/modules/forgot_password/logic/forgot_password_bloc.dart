import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/modules/forgot_password/router/forgot_password_router.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'forgot_password_state.dart';

class ForgotPasswordBloc extends Cubit<ForgotPasswordState> {
  ForgotPasswordBloc() : super(const ForgotPasswordState());
  final Domain _domain = Domain();

  Future<void> onCheckAccount(context) async {
    BaseLoading.show();
    final value = await _domain.account.postCheckAccountForgot(state.email);
    if (value.isSuccess) {
      ForgotPasswordCoordinator.showAccessYourAccount(context);
    } else {
      XSnackBar.show(msg: "No user fond");
    }
    BaseLoading.dismiss();
  }

  Future<void> onSendEmail(context) async {
    BaseLoading.show();
    final value = await _domain.account.postForgotPassword(state.email);
    if (value.isSuccess) {
      ForgotPasswordCoordinator.showInputToken(context);
    } else {
      XSnackBar.show(msg: "No user fond");
    }
    BaseLoading.dismiss();
  }

  Future<void> onSendTokenEmail(context) async {
    BaseLoading.show();
    final value = await _domain.account.postTokenForgotPassword(
      username: state.email,
      token: state.token,
    );
    if (value.isSuccess) {
      emit(state.copyWith(tokenWithApi: value.data?.token ?? ""));
      ForgotPasswordCoordinator.showCreateNewPassword(context);
    } else {
      XSnackBar.show(msg: "Token is error");
    }
    BaseLoading.dismiss();
  }

  Future<void> onCreateNewPassword() async {
    BaseLoading.show();
    final value = await _domain.account.putChangePassword(
        newPassword: state.newPassword, token: state.tokenWithApi);
    if (value.isSuccess) {
      XCoordinator.showDashboard();
    } else {
      XSnackBar.show(msg: "Error");
    }
    BaseLoading.dismiss();
  }

  void changeNewPassword(value) => emit(state.copyWith(newPassword: value));

  void changeEmail(value) => emit(state.copyWith(email: value));
  void changeToken(value) => emit(state.copyWith(token: value));
}
