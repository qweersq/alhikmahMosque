import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_themes.dart';

class AppThemes {
  const AppThemes._();

  static final ThemeData mainTheme = ThemeData(
    textTheme: AppTextThemes.mainTextTheme,
    primaryColor: AppColors.colorPrimary,
    splashColor: AppColors.colorPrimary,
    primaryColorDark: AppColors.colorPrimaryDark,
    primaryColorLight: AppColors.colorPrimaryLight,
    primarySwatch: Colors.indigo,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
