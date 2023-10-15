import 'package:auth/src/constants/colors.dart';
import 'package:flutter/material.dart';

class TextFormFieldTheme {
  TextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
     const InputDecorationTheme(
         border: OutlineInputBorder(),
         prefixIconColor: SecondaryColor,
         floatingLabelStyle: TextStyle(color: SecondaryColor),
         focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.0, color: SecondaryColor)
          )
      );

  static InputDecorationTheme darkInputDecorationTheme =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: PrimaryColor,
      floatingLabelStyle: TextStyle(color: PrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: SecondaryColor)
      )
  );
}