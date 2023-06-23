import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Color.fromARGB(255, 72, 36, 133),
      appBarTheme: const AppBarTheme(elevation: 20));
}
