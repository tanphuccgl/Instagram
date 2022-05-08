import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';

class BottomBarSign extends StatelessWidget {
  const BottomBarSign(
      {Key? key, this.textLeft, this.textRight, this.voidCallback})
      : super(key: key);
  final String? textLeft;
  final String? textRight;
  final VoidCallback? voidCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              color: MyColors.colorBlack.withOpacity(0.1),
              width: double.infinity,
              height: 1,
            ),
          ),
        ),
        TextSpan(
          text: textLeft,
          style:
              Style.textTheme().titleSmall!.copyWith(color: MyColors.colorGray),
        ),
        TextSpan(
          text: textRight,
          style: Style.textTheme().titleSmall!.copyWith(
              color: MyColors.colorBlue,
              fontSize: 12,
              fontWeight: FontWeight.w600),
          recognizer: TapGestureRecognizer()..onTap = voidCallback,
        )
      ]),
    ));
  }
}
