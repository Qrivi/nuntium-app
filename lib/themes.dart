import 'package:flutter/material.dart';

var lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Color(0xFFFFFFFF),
  primaryColor: Color(0xFFFFFFFF),
  accentColor: Color(0xFF62BC8F),
  primaryTextTheme: TextTheme(
    bodyText1: TextStyle(
        color: Color(0xFF000000)
    ),
    bodyText2: TextStyle(
        color: Color(0xFF000000)
    ),
    headline6: TextStyle(
        color: Color(0xFF000000)
    ),
  ),
);

var darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Color(0xFF252525),
  primaryColor: Color(0xFF252525),
  accentColor: Color(0xFF62BC8F),
);

var oledTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Color(0xFF000000),
  primaryColor: Color(0xFF000000),
  accentColor: Color(0xFF62BC8F),
);