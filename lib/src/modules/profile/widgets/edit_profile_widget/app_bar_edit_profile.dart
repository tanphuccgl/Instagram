import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/bottom_sheet_create_profile.dart';

class AppBarEditProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarEditProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      elevation: 0,
      leading: BackButton(
        color: Colors.black,
        onPressed: () => XCoordinator.pop(context),
      ),
      backgroundColor: MyColors.colorWhite,
      title: const Text(
        'Edit profile',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () => XBottomSheet.show(context,
                backgroundColor: MyColors.colorBackground,
                widget: const BottomSheetCreateProfile()),
            icon: const Icon(
              Icons.check,
              color: Colors.blue,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
