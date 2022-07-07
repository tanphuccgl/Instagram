import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';
import 'package:instagram/src/modules/search/widgets/profile_user/app_bar_profile_user.dart';
import 'package:instagram/src/modules/search/widgets/profile_user/info_widget_user.dart';
import 'package:instagram/src/modules/search/widgets/profile_user/stories_profile_user.dart';
import 'package:instagram/src/modules/search/widgets/profile_user/tab_profile_user.dart';

class ProfileUserPage extends StatelessWidget {
  const ProfileUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
        builder: (context, state) {
      return Scaffold(
        appBar: const AppBarProfileUser(),
        body: ListView(
          shrinkWrap: true,
          children: const [
            InfoUserWidget(),
            StoriesProfileUser(),
            Divider(
              color: MyColors.colorGray,
            ),
            TabProfileUser()
          ],
        ),
      );
    });
  }
}
