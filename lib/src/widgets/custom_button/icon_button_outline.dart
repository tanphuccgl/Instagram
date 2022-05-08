import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_properties.dart';

class XIconButtonOutline extends StatelessWidget {
  final double? width;
  final double height;
  final VoidCallback? onPressed;
  final Widget icon;
  final bool isCircle;
  const XIconButtonOutline(
      {Key? key,
      this.width = double.infinity,
      this.height = 36,
      this.isCircle = false,
      required this.icon,
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
                minimumSize: Size.zero,
                padding: EdgeInsets.zero,
                primary: MyColors.colorWhite,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: isCircle
                    ? const CircleBorder(
                        side: BorderSide(color: MyColors.colorGray, width: 1))
                    : RoundedRectangleBorder(
                        borderRadius: MyProperties.borderRadius),
                onPrimary: MyColors.colorGray),
            child: icon));
  }
}
