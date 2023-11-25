import 'package:flutter/material.dart';

import 'all_configs.dart';

class Themes {
  static final lightMode = ThemeData(
      primaryColor: kAppPrimary,
      brightness: Brightness.light,
      fontFamily: 'Poppins',
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1)));

  static final darkMode = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1)));
}
