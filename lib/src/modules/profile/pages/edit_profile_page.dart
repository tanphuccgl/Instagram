import 'package:flutter/material.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/app_bar_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/bottom_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/header_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/infomation_edit_profile.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarEditProfile(),
      body: ListView(
        shrinkWrap: true,
        children: const [
          HeaderEditProfile(),
          InfomationEditProfile(),
          BottomEditProfile()
        ],
      ),
    );
  }
}
