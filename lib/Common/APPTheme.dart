import 'package:flutter/material.dart';
import 'dart:ui' as ui show window;

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
  accentColor: Colors.blue,
  fontFamily: 'Georgia',
  appBarTheme: _appbarTheme(),
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);

AppBarTheme _appbarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline6: TextStyle(color: Colors.black, fontSize: 18),
    ),
    iconTheme: IconThemeData(color: Colors.black),
  );
}

Widget getImage(String imagePath) {
  return new Image.asset(
    imagePath,
    width: 35,
    height: 35,
  );
}


class Screen {
  static double get width {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    return mediaQuery.size.width;
  }
}