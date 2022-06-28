import 'package:flutter/material.dart';
import 'package:instagram/src/config/routes/coordinator.dart';
import 'package:instagram/src/config/theme/my_colors.dart';

class AppBarEditProfile extends StatelessWidget implements PreferredSizeWidget {
  final Widget iconCheck;
  const AppBarEditProfile({
    Key? key,
    required this.iconCheck,
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
        iconCheck,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
