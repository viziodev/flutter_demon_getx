import 'package:flutter/material.dart';
import 'package:flutter_demon_getx/utils/constants/colors_constant.dart';


class Themes {
  static final lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: MyColors.lavender,
      onPrimary: Colors.black,
      secondary: MyColors.spaceBlue,
      onSecondary: MyColors.spaceCadet,
      background: MyColors.babyPink,
    ),
  );

  static final darkTheme = ThemeData(
      colorScheme: const ColorScheme.dark(
    primary: MyColors.spaceBlue,
    secondary: MyColors.burgundy,
    onSecondary: MyColors.spaceCadet,
    background: MyColors.spaceCadet,
  ));
}