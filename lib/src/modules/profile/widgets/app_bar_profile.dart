import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';

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
      title: RichText(
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
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: MyColors.colorBlack,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: MyColors.colorBlack))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
