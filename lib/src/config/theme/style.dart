import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';

class Style {
  static TextTheme textTheme() => const TextTheme(
        titleSmall: TextStyle(
          fontSize: 12,color: MyColors.colorBlack,
          fontWeight: FontWeight.normal,

        ),
        labelSmall: TextStyle(
          fontSize: 14,color: MyColors.colorWhite,
          fontWeight: FontWeight.w600,

        ),
      );
}
