import 'package:flutter/material.dart';
import 'package:islami/screens/ahadeth_screen.dart';
import 'package:islami/screens/quran_screen.dart';
import 'package:islami/screens/radio_screen.dart';
import 'package:islami/screens/sebha_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);
  static const routeName = 'home-layout';
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  final screens = [
    const RadioScreen(),
    SebhaScreen(),
    const AhadethScreen(),
    QuranScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('إسلامي'),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: screens[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).highlightColor,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/bnb1.png')),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/bnb2.png')),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/bnb3.png')),
            label: 'Ahadeth',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/bnb4.png')),
            label: 'Quran',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
