import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram/src/modules/profile/logic/edit_profile/edit_profile_bloc.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';

class EditProfileWrapperPage extends StatelessWidget {
  const EditProfileWrapperPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => EditProfileBloc(EditProfileState(
            name: GetIt.I<ProfileBloc>().state.data.fullName ?? "",
            bio: GetIt.I<ProfileBloc>().state.data.bio ?? "",
            phone: GetIt.I<ProfileBloc>().state.data.phoneNumber ?? "",
            website: GetIt.I<ProfileBloc>().state.data.website ?? "",
            username:
                GetIt.I<ProfileBloc>().state.data.idAccount?.username ?? "")),
        child: const Scaffold(body: AutoRouter()));
  }
}
