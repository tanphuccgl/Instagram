import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_fonts.dart';
import 'package:instagram/src/config/theme/style.dart';

class XTheme {
  static ThemeData light() => ThemeData(
        scaffoldBackgroundColor: MyColors.colorBackground,
        textTheme: Style.textTheme(),
        fontFamily: XFonts.metropolis,
        snackBarTheme:
            const SnackBarThemeData(backgroundColor: MyColors.colorPrimary),
        primaryColor: MyColors.colorPrimary,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: MyColors.colorPrimary,
            shadowColor: MyColors.colorShadow,
            textStyle: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, height: 1.42),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      );
  static ThemeData dark() => ThemeData.dark();
}
