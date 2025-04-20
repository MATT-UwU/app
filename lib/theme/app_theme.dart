import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepOrangeAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.amber,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );
  static final ThemeData DarkTheme = ThemeData.light().copyWith(
    primaryColor: Colors.amber,
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
  );
}
