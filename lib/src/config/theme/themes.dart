import 'package:flutter/material.dart';
import 'package:instagram/src/config/theme/my_colors.dart';
import 'package:instagram/src/config/theme/my_fonts.dart';
import 'package:instagram/src/config/theme/my_properties.dart';
import 'package:instagram/src/config/theme/style.dart';

class XTheme {
  static ThemeData light() => ThemeData(
        backgroundColor: MyColors.colorWhite,
        appBarTheme: const AppBarTheme(
            backgroundColor: MyColors.colorWhite, elevation: 0),
        scaffoldBackgroundColor: MyColors.colorWhite,
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
              borderRadius: MyProperties.borderRadius,
            ),
          ),
        ),
      );
  static ThemeData dark() => ThemeData.dark();
}
