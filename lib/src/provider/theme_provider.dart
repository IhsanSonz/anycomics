import 'package:anycomics/src/styles/theme_data_style.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeDataStyle.dark;

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    _themeData =
        (_themeData == ThemeDataStyle.light)
            ? ThemeDataStyle.dark
            : ThemeDataStyle.light;
    notifyListeners();
  }
}
