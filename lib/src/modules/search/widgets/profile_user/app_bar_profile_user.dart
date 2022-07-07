import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/modules/search/logic/profile_user_bloc.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile_user/bottom_sheet_notification_profile_user.dart';

class AppBarProfileUser extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfileUser({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileUserBloc, ProfileUserState>(
      builder: (context, state) {
        return AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: MyColors.colorWhite,
          title: Text(state.data.idAccount?.username ?? ""),
          actions: [
            state.data.isFollow == true
                ? IconButton(
                    onPressed: () => XBottomSheet.show(context,
                        backgroundColor: MyColors.colorBackground,
                        widget: const BottomSheetNotificationProfileUser()),
                    icon: const Icon(Icons.notifications,
                        color: MyColors.colorBlack))
                : const SizedBox.shrink(),
            IconButton(
                onPressed: () => XBottomSheet.show(context,
                    backgroundColor: MyColors.colorBackground,
                    widget: const BottomSheetNotificationProfileUser()),
                icon: const Icon(Icons.more_vert_outlined,
                    color: MyColors.colorBlack))
          ],
        );
      },
    );
  }
}
