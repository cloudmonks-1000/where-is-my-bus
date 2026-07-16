import 'package:flutter/material.dart';

import 'core/theme.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const WhereIsMyBus());
}

class WhereIsMyBus extends StatelessWidget {
  const WhereIsMyBus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Where Is My Bus",
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}