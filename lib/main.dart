
import 'package:flutter/material.dart';
import 'package:furniturezoid/theme/theme_data.dart';

// import 'screen/login_screen.dart';
import 'screen/login_screen.dart';
import 'screen/register_screen.dart';
import 'screen/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter class',
      theme: getApplicationTheme(),
      initialRoute: '/RegisterScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        '/LoginPageScreen': (context) => const LoginPageScreen(),
      },
    ),
  );
}

