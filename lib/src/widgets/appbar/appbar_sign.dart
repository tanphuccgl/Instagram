import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';

class AppBarSign extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: SafeArea(
            child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                  text: "English (United States)",
                  style: Style.textTheme()
                      .titleSmall!
                      .copyWith(color: MyColors.colorGray)),
              const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(
                    Icons.arrow_drop_down_sharp,
                    color: MyColors.colorGray,
                  )),
            ],
          ),
        )));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
