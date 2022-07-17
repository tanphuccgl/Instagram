import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/modules/profile/logic/edit_profile/edit_profile_bloc.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/app_bar_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/bottom_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/header_edit_profile.dart';
import 'package:instagram/src/modules/profile/widgets/edit_profile_widget/infomation_edit_profile.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarEditProfile(iconCheck: _iconButtonCheck()),
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

  Widget _iconButtonCheck() {
    return BlocBuilder<EditProfileBloc, EditProfileState>(
      buildWhen: (previous, current) => previous.isCheck != current.isCheck,
      builder: (context, state) {
        return IconButton(
            onPressed: () =>
                context.read<EditProfileBloc>().onCheckUsername(context),
            icon: const Icon(
              Icons.check,
              color: Colors.blue,
            ));
      },
    );
  }
}
