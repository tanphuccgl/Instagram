import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/constants/my_network.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/bottom_sheet_change_profile_photo.dart';

class HeaderEditProfile extends StatelessWidget {
  const HeaderEditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => XBottomSheet.show(context,
              backgroundColor: MyColors.colorBackground,
              widget: const BottomSheetChangeProfilePhoto()),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(300.0),
              child: Image.network(
                state.data.avartarUrl ?? MyNetwork.urlAvatar,
                fit: BoxFit.cover,
                width: 96,
                height: 96,
              ),
            ),
            const Text(
              'Change profile photo',
              style: TextStyle(color: Colors.blue),
            )
          ]),
        );
      },
    );
  }
}
