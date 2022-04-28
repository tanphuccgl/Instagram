import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';

class DividerCustom extends StatelessWidget {
  const DividerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 1,
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                color: MyColors.colorBlack.withOpacity(0.2),
                width: 130,
                height: 1,
              ),
            ),
          ),
          TextSpan(
              text: "OR",
              style: Style.textTheme().titleSmall!.copyWith(
                  color: MyColors.colorGray,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                color: MyColors.colorBlack.withOpacity(0.2),
                width: 130,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
