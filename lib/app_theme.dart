import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //STATIC colors
  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static const Color _lightTextPrimaryColor = Colors.black;
  static const Color _appBarColorLight = Colors.blue;

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextPrimaryColor = Colors.white;
  static final Color _appBarColorDark = Colors.blueGrey.shade800;

  static const Color _iconColor = Colors.white;

  static const Color _accentColor = Color.fromRGBO(74, 217, 217, 1);

  //TextStyle LIGHT
  static const TextStyle _lightHeadingText = TextStyle(
    color: _lightTextPrimaryColor,
    fontFamily: 'Rubik',
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _lightBodyText = TextStyle(
    color: _lightTextPrimaryColor,
    fontFamily: 'Rubik',
    fontStyle: FontStyle.italic,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextTheme _lightTextTheme = TextTheme(
    headline1: _lightHeadingText,
    headline2: _lightBodyText,
  );

  //TextStyle DARK
  static final TextStyle _darkHeadingText =
      _lightHeadingText.copyWith(color: _darkTextPrimaryColor);

  static final TextStyle _darkBodyText =
      _lightBodyText.copyWith(color: _darkTextPrimaryColor);

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkHeadingText,
    headline2: _darkBodyText,
  );

  //Theme LIGHT
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: _appBarColorLight,
      iconTheme: IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _appBarColorLight,
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _accentColor,
      primaryContainer: _lightPrimaryVariantColor,
    ),
    textTheme: _lightTextTheme,
  );

  //Theme DARK
    static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      color: _appBarColorDark,
      iconTheme: const IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _appBarColorDark,
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      onPrimary: _darkOnPrimaryColor,
      secondary: _accentColor,
      primaryContainer: _darkPrimaryVariantColor,
    ),
    textTheme: _darkTextTheme,
  );
}
