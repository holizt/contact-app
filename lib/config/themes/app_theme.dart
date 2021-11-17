import 'package:flutter/material.dart';
import '../../constant/colors.dart';
import '../../constant/fonts.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: ColorsApp.primaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: FontApp.textTheme,
  canvasColor: ColorsApp.backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: ColorsApp.backgroundColor,
    elevation: 0,
    centerTitle: true,
  ),
);
