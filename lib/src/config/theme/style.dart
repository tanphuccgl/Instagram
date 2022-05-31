import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';

class Style {
  static TextTheme textTheme() => const TextTheme(
        titleSmall: TextStyle(
          fontSize: 12,
          color: MyColors.colorBlack,
          fontWeight: FontWeight.normal,
        ),
        titleMedium: TextStyle(
          fontSize: 25,
          color: MyColors.colorBlack,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
          color: MyColors.colorWhite,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          fontSize: 17,
          color: MyColors.colorBlack,
          fontWeight: FontWeight.normal,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: MyColors.colorBlack,
          fontWeight: FontWeight.normal,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          color: MyColors.colorBlack,
          fontWeight: FontWeight.normal,
        ),
      );
}
