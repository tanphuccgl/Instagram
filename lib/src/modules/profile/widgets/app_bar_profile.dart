import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';
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
                text: 'tanphuc_levi',
                style: Style.textTheme().titleSmall!.copyWith(
                    color: MyColors.colorBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    color: MyColors.colorBlack,
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
            icon: const Icon(
              Icons.add_box_outlined,
              color: MyColors.colorBlack,
            )),
        IconButton(
            onPressed: () => XBottomSheet.show(context,
                backgroundColor: MyColors.colorBackground,
                widget: const BottomSheetMenuProfile()),
            icon: const Icon(Icons.menu, color: MyColors.colorBlack))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
