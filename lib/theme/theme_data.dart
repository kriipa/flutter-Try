
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Color.fromARGB(255, 80, 92, 109),
      elevation: 4,
      shadowColor: Color.fromARGB(255, 26, 22, 22),
      titleTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      )
    ),
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color.fromARGB(255, 217, 230, 218),
        fontFamily: 'Montserrat Light',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontFamily: 'OpenSans Bold',
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
    );
}