
import 'package:flutter/material.dart';
import 'package:furniturezoid/theme/theme_data.dart';

import 'screen/login_screen.dart';
import 'screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter class',
      theme: getApplicationTheme(),
      initialRoute: '/SplashScreen',
      routes: {
        '/LoginScreen': (context) => const LoginScreen(),
        '/SplashScreen': (context) => const SplashScreen()

      },
    ),
  );
}

