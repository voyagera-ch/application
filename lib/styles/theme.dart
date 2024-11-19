import 'package:flutter/material.dart';

const lightPink = Color.fromRGBO(229, 217, 242, 1);
const mediumPurple = Color.fromRGBO(67, 56, 120, 1);
const darkPurple = Color.fromRGBO(32, 30, 67, 1);

ThemeData getTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: lightPink,
    canvasColor: darkPurple,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: lightPink, fontSize: 18),
      bodyMedium: TextStyle(color: lightPink, fontSize: 16),
      bodySmall: TextStyle(color: lightPink, fontSize: 14),
      headlineMedium: TextStyle(color: lightPink, fontWeight: FontWeight.bold),
    ),
    scaffoldBackgroundColor: darkPurple,
  );
}

ThemeData getLightTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyLarge: const TextStyle(color: Colors.white, fontSize: 18),
      bodyMedium: TextStyle(color: Colors.grey[300], fontSize: 16),
      bodySmall: TextStyle(color: Colors.grey[500], fontSize: 14),
      headlineMedium:
          const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),
    ),
  );
}
