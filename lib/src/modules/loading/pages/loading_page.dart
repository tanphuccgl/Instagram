import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/modules/account/logic/account_bloc.dart';
import 'package:instagram/src/modules/sign/router/sign_router.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountBloc(),
      child: BlocListener<AccountBloc, AccountState>(
        listener: (context, state) {
          if (state.isLoading == false) {
            if (state.tokenUser == "" || state.tokenUser == "N/A") {
              SignCoordinator.showSignUp(context);
            } else {
              XCoordinator.showDashboard();
            }
          }
        },
        child: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Loading....'),
              CircularProgressIndicator(),
            ],
          )),
        ),
      ),
    );
  }
}
