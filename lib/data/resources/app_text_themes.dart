import 'package:flutter/material.dart';

class AppTextThemes {
  const AppTextThemes._();

  static const String montserratFont = 'Montserrat';
  static const String museoFont = 'MuseoModerno';
  static const String dmsansFont = 'DMSans';
  static const String fontFamilyTheme = dmsansFont;

  static const TextTheme mainTextTheme = TextTheme(
    headline1: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 92.0,
      fontWeight: FontWeight.w400,
      letterSpacing: -50,
    ),
    headline2: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
    ),
    headline3: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 46,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 32,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    headline5: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 23,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
    ),
    subtitle1: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
    ),
    subtitle2: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    bodyText1: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    ),
    bodyText2: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
    ),
    button: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    overline: TextStyle(
      fontFamily: fontFamilyTheme,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
    ),
  );
}
