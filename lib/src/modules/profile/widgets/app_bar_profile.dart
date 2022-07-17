import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
import 'package:instagram/src/constants/my_images.dart';
import 'package:instagram/src/modules/profile/logic/profile/profile_bloc.dart';
import 'package:instagram/src/widgets/bottom_sheet/bottom_sheet.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/bottom_sheet_account_profile.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/bottom_sheet_create_profile.dart';
import 'package:instagram/src/widgets/bottom_sheet/profile/bottom_sheet_menu_profile.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: MyColors.colorWhite,
          title: GestureDetector(
            onTap: () => XBottomSheet.show(context,
                backgroundColor: MyColors.colorBackground,
                widget: const BottomSheetAccountProfile()),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: state.data.idAccount?.username ?? "",
                    style: Style.textTheme().titleSmall!.copyWith(
                        color: MyColors.colorBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Image.asset(
                        MyIcons.icDownArrow,
                        width: 20,
                        height: 20,
                        color: Colors.grey,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () => XBottomSheet.show(context,
                    backgroundColor: MyColors.colorBackground,
                    widget: const BottomSheetCreateProfile()),
                icon: Image.asset(
                  MyIcons.icAddPost,
                  fit: BoxFit.cover,
                  width: 20,
                  height: 20,
                  color: MyColors.colorBlack,
                )),
            IconButton(
                onPressed: () => XBottomSheet.show(context,
                    backgroundColor: MyColors.colorBackground,
                    widget: const BottomSheetMenuProfile()),
                icon: const Icon(Icons.menu, color: MyColors.colorBlack))
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
