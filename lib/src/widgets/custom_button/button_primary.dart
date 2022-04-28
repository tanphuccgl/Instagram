import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/style.dart';

class XButton extends StatelessWidget {
  final String label;
  final double? width;
  final double height;
  final VoidCallback? onPressed;
  final Widget? prefixIcon;
  const XButton(
      {Key? key,
      required this.label,
      this.width = double.infinity,
      this.height = 36,
      this.prefixIcon,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                primary: MyColors.colorBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                onPrimary: MyColors.colorWhite),
            child: RichText(
              text: TextSpan(
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: prefixIcon ?? const SizedBox.shrink(),
                  ),
                  TextSpan(
                    text: label,
                    style: Style.textTheme().labelSmall,
                  ),
                ],
              ),
            )));
  }
}
