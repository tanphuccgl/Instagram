import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/repositories/domain.dart';
import 'package:instagram/src/widgets/loading/base_loading.dart';
import 'package:instagram/src/widgets/snackbar/snackbar.dart';

part 'signup_state.dart';

class SignUpBloc extends Cubit<SignUpState> {
  final Domain _domain = Domain();

  SignUpBloc() : super(const SignUpState());

  void onCheckUsername() async {
    final value = await _domain.account.checkUsername(state.username);
    if (value.isSuccess) {
      if (value.data?.success == true) {
        emit(state.copyWith(pureUsername: true));
      } else {
        emit(state.copyWith(
            pureUsername: false, suggestUsername: value.data?.data));
      }
    } else {
      XSnackBar.show(msg: 'Error');
    }
  }

  void onCheckEmail() async {
    final value = await _domain.account.checkEmail(state.email);
    if (value.isSuccess) {
      emit(state.copyWith(pureEmail: true));
    } else {
      emit(state.copyWith(pureEmail: false));
    }
  }

  void changeEmail(String value) => emit(state.copyWith(email: value));

  void changeName(String value) => emit(state.copyWith(name: value));
  void changePassword(String value) => emit(state.copyWith(password: value));

  void changeUsername(String value) => emit(state.copyWith(username: value));

  void onSignUp(context) async {
    BaseLoading.show();

    final value = await _domain.account.postRegister(
      username: state.username,
      password: state.password,
      email: state.email,
      fullName: state.name,
    );
    if (value.isSuccess) {
      XCoordinator.pop(context);
    } else {
      XSnackBar.show(msg: "Error");
    }

    BaseLoading.dismiss();
  }
}
