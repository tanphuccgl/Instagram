import 'package:flutter/material.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/app_bar_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/infomation_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/text_field_edit_profile.dart';

class ChangeInformationPage extends StatelessWidget {
  const ChangeInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarEditProfile(),
      body: ListView(
        shrinkWrap: true,
        children: const [
          TextFieldEditProfile(label: 'Username'),
          InfomationEditProfile(),
          Text(
            'You\'ll be able to change your username back to leviii2k for another 14 days',
          ),
          Text(
            'Learn More',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
    );
  }
}
