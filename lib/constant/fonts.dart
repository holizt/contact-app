import 'package:flutter/material.dart';
import 'dimen.dart';

abstract class FontApp {
  static const String _fontName = 'LibreFranklin';

  static const textTheme = TextTheme(
    headline1: TextStyle(
        fontFamily: _fontName,
        fontSize: sizeHeadline1,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5),
    headline2: TextStyle(
        fontFamily: _fontName,
        fontSize: sizeHeadline2,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5),
    headline3: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeHeadline3,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
        fontFamily: _fontName,
        fontSize: sizeHeadline4,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25),
    headline5: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeHeadline5,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeHeadline6,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeSubtitle1,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeSubtitle2,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeBody1,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeBody2,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeButton,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeCaption,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: TextStyle(
      fontFamily: _fontName,
      fontSize: sizeOverline,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );
}
