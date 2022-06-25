import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme fooderLightText = const TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: 70,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontSize: 50,
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 30,
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
  );

  static TextTheme fooderDarkText = const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 70,
      ),
      headline2: TextStyle(
        color: Colors.white,
        fontSize: 50,
      ),
      headline3: TextStyle(color: Colors.white, fontSize: 20),
      bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
      bodyText2: TextStyle(color: Colors.white, fontSize: 20));

  static ThemeData myLight() {
    return ThemeData(
      backgroundColor: Colors.white,
      textTheme: fooderLightText,
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 3, 174, 131),
        titleSpacing: 10.0,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 3, 174, 131),
          hoverColor: Colors.black),
    );
  }

  static ThemeData myDark() {
    return ThemeData(
        backgroundColor: const Color.fromARGB(255, 141, 194, 181),
        brightness: Brightness.dark,
        textTheme: fooderDarkText,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 3, 174, 131),
          titleSpacing: 10.0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 3, 174, 131),
            hoverColor: Colors.white),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ));
  }
}
