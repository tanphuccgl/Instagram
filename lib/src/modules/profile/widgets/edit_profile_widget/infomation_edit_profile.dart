import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/modules/profile/logic/edit_profile/edit_profile_bloc.dart';
import 'package:instagram/src/modules/profile/router/edit_profile_router.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/text_field_edit_profile.dart';

class InfomationEditProfile extends StatelessWidget {
  const InfomationEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: MyProperties.pHorScreen,
        child: BlocBuilder<EditProfileBloc, EditProfileState>(
            builder: (context, state) {
          return Column(
            children: [
              TextFieldEditProfile(
                  label: 'Name',
                  onChanged: (value) =>
                      context.read<EditProfileBloc>().changeName(value),
                  value: state.name),
              TextFieldEditProfile(
                  label: 'Username',
                  readOnly: true,
                  onTap: () =>
                      EditProfileCoordinator.showEditInformationProfile(
                          context),
                  onChanged: (value) {},
                  value: state.username),
              TextFieldEditProfile(
                  label: 'Phone number',
                  onChanged: (value) =>
                      context.read<EditProfileBloc>().changePhone(value),
                  value: state.phone),
              TextFieldEditProfile(
                  label: 'Website',
                  onChanged: (value) =>
                      context.read<EditProfileBloc>().changeWebsite(value),
                  value: state.website),
              TextFieldEditProfile(
                  label: 'Bio',
                  onChanged: (value) =>
                      context.read<EditProfileBloc>().changeBio(value),
                  value: state.bio),
            ],
          );
        }));
  }
}
