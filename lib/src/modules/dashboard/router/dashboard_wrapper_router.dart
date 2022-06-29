import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';

class DashboardWrapperPage extends StatelessWidget {
  const DashboardWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GetIt.I<ProfileBloc>();

    return WillPopScope(
        onWillPop: () async => false,
        child: const Scaffold(body: AutoRouter()));
  }
}
