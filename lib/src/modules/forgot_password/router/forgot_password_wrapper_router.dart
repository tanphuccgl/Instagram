import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/forgot_password/logic/forgot_password_bloc.dart';

class ForgotPasswordWrapperPage extends StatelessWidget {
  const ForgotPasswordWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ForgotPasswordBloc(),
        child: const Scaffold(body: AutoRouter()));
  }
}
