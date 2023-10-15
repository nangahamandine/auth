import 'package:auth/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:auth/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:auth/src/utils/theme/widget_themes/text_form_field_theme.dart';
import 'package:auth/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtomTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtomTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
  );


  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );

}