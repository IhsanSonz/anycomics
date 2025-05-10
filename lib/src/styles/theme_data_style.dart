import 'package:flutter/material.dart';

class ThemeDataStyle {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.blueGrey.shade200,
      secondary: Colors.blueGrey.shade300,
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: Colors.blueGrey.shade500,
      secondary: Colors.blueGrey.shade700,
    ),
  );
}
