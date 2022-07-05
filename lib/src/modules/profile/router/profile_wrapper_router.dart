import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/profile/logic/follow/follow_bloc.dart';

class ProfileWrapperPage extends StatelessWidget {
  const ProfileWrapperPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FollowBloc(),
      child: const Scaffold(body: AutoRouter()),
    );
  }
}
