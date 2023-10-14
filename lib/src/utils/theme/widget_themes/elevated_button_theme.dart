import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class AElevatedButtonTheme {
  AElevatedButtonTheme._();


  static final lightElevatedButtomTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: WhiteColor,
      backgroundColor: SecondaryColor,
      side: BorderSide(color: SecondaryColor),
      padding: EdgeInsets.symmetric(vertical: ButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: SecondaryColor,
      backgroundColor: WhiteColor,
      side: BorderSide(color: WhiteColor),
      padding: EdgeInsets.symmetric(vertical: ButtonHeight),
    ),
  );

}