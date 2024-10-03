import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Color.fromARGB(255, 217, 26, 26),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(color: Colors.blue, fontSize: 24),
      bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
    ),

  );
}
