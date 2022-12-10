import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xfff04854);
  static const Color secondaryColor = Color(0xff2a9d8f);
  static const Color tertiaryColor = Color(0xff5b7083);
  static const Color loadingColor = Color(0xfff0f2f5);

  static final ThemeData theme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: primaryColor,
    dividerColor: tertiaryColor,
    canvasColor: loadingColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(color: Colors.white, elevation: 0),
    textTheme: const TextTheme(
      bodyText2: TextStyle(fontSize: 14, height: 1.3),
      subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      headline5: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      headline6: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
