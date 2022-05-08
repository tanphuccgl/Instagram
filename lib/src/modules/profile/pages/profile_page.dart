import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/modules/profile/widgets/app_bar_profile.dart';
import 'package:instagram/src/modules/profile/widgets/info_widget.dart';
import 'package:instagram/src/modules/profile/widgets/stories_profile.dart';
import 'package:instagram/src/modules/profile/widgets/tab_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarProfile(),
      body: ListView(
        shrinkWrap: true,
        children: const [
          InfoWidget(),
          StoriesProfile(),
          Divider(
            color: MyColors.colorGray,
          ),
          TabProfile()
        ],
      ),
    );
  }
}
