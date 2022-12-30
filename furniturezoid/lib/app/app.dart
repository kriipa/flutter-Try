
import 'package:furniturezoid/app/theme.dart';
import 'package:furniturezoid/screen/dashboard.dart';
import 'package:flutter/material.dart';

import '../screen/register_screen.dart';
import '../screen/login_screen.dart';
import '../screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: getApplicationThemeData(),
      initialRoute: '/SplashScreen',
      routes: {
        '/SplashScreen': (context) => const SplashScreen(),
        '/RegisterScreen': (context) => const RegisterScreen(),
        '/LoginPageScreen': (context) => const LoginPageScreen(),
        '/DashboardScreen': (context) => const DashboardScreen(),
      },
    );
  }
}
