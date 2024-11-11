import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      surface: const Color(0xFFD6D6D6),
      primary: Colors.grey.shade200,
      secondary: Colors.black),
);

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        surface: const Color(0xFF212121),
        primary: Colors.grey.shade200,
        secondary: Colors.white));
