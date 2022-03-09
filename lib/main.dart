import 'package:flutter/material.dart';
import 'package:islami/layout/home_layout.dart';
import 'package:islami/screens/ahadeth_screen.dart';
import 'package:islami/screens/quran_screen.dart';
import 'package:islami/screens/radio_screen.dart';
import 'package:islami/screens/sebha_screen.dart';
import 'package:islami/theme.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      debugShowCheckedModeBanner: false,
      home: const HomeLayout(),
      theme: myTheme,
      routes: {
        HomeLayout.routeName: (context) => const HomeLayout(),
        RadioScreen.routeName: (context) => const RadioScreen(),
        SebhaScreen.routeName: (context) => SebhaScreen(),
        AhadethScreen.routeName: (context) => const AhadethScreen(),
        QuranScreen.routeName: (context) => QuranScreen(),
      },
    );
  }
}
