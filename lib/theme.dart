import 'package:flutter/material.dart';

ThemeData myTheme = ThemeData(
  canvasColor: const Color(0xffB7935F),
  highlightColor: const Color(0xff242424),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    centerTitle: true,
    elevation: 0,
    backgroundColor: Colors.transparent,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 25,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    headline2: TextStyle(
      fontSize: 25,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
);
