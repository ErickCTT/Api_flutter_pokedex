import 'package:api_pokemon/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:api_pokemon/ui/home_screem.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      home: const HomeScreem(),
    );
  }
}
