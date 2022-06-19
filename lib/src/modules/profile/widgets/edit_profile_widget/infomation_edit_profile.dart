import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/modules/profile/router/edit_profile_router.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/text_field_edit_profile.dart';

class InfomationEditProfile extends StatelessWidget {
  const InfomationEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyProperties.pHorScreen,
      child: Column(
        children: [
          const TextFieldEditProfile(label: 'Name'),
          GestureDetector(
              onTap: () =>
                  EditProfileCoordinator.showEditInformationProfile(context),
              child: const TextFieldEditProfile(label: 'Username')),
          const TextFieldEditProfile(label: 'Pronouns'),
          const TextFieldEditProfile(label: 'Website'),
          const TextFieldEditProfile(label: 'Bio'),
        ],
      ),
    );
  }
}
