import 'package:flutter/material.dart';
import 'package:islami/home_layout.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Islami',
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}
