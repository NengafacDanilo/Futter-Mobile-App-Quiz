import 'package:flutter/material.dart';

import '/screens/dashboard.dart';
import '/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(),
      home: const SplashScreen(),
      routes: {
        "dashboard": (context) =>const MySearchPage(),
      },
    );
  }
}
