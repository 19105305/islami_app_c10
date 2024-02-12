import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFF141A2E);
  static const Color onPrimaryDarkColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.bold,
          fontSize: 30),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 17,
        color: Colors.black,
        fontWeight: FontWeight.normal,
      ),
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black),
      bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black),
      bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: Colors.black),
      bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black),
    ),
    dividerColor: primaryColor,
    dividerTheme: DividerThemeData(
      color: primaryColor,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: onPrimaryDarkColor,
      ),
      titleTextStyle: TextStyle(
          color: onPrimaryDarkColor,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.bold,
          fontSize: 30),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: onPrimaryDarkColor,
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 17,
        color: onPrimaryDarkColor,
        fontWeight: FontWeight.normal,
      ),
      selectedIconTheme: IconThemeData(color: onPrimaryDarkColor),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white),
      bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white),
      bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: Colors.white),
      bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.white),
    ),
    dividerColor: onPrimaryDarkColor,
    dividerTheme: DividerThemeData(
      color: onPrimaryDarkColor,
    ),
  );
}
