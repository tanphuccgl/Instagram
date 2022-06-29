import 'dart:async';

import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/models/prefs.dart';

part 'account_state.dart';

class AccountBloc extends Cubit<AccountState> {
  AccountBloc() : super(const AccountState()) {
    getUser();
  }

  void getUser() async {
    await Future.delayed(Duration.zero);

    String currentTokenUser = Prefs.getTokenAccount();

    emit(state.copyWith(
        tokenUser: currentTokenUser == "" ? "" : currentTokenUser,
        isLoading: false));
  }

  void logout() {
    Prefs.setTokenAccount("");
    XCoordinator.logout();
  }
}
