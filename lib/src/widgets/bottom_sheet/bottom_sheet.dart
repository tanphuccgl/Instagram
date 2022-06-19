import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';

class XBottomSheet {
  static show(context,
      {required Widget widget,
      Color backgroundColor = MyColors.colorWhite,
      bool isShowLineTop = true}) async {
    const radius = Radius.circular(34);

    return await showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: radius, topRight: radius)),
        backgroundColor: backgroundColor,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                isShowLineTop == true
                    ? _lineOnTopBottomSheet()
                    : const SizedBox.shrink(),
                widget
              ],
            ),
          );
        });
  }
}

Widget _lineOnTopBottomSheet() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 14),
    child: Container(
      height: 6,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: MyColors.colorGray,
      ),
    ),
  );
}
