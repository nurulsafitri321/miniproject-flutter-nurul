import 'dart:ffi';

import 'package:applibrary/screens/home/home_screens.dart';
import 'package:applibrary/screens/market/market_screens.dart';
import 'package:applibrary/screens/profile/profile_screen.dart';
import 'package:applibrary/screens/view/summary_screen.dart';
import 'package:flutter/material.dart';


class ScreensWrapper extends StatefulWidget {
  const ScreensWrapper({Key? key}) : super(key: key);
  

  @override
  _ScreensWrapperState createState() => _ScreensWrapperState();
}

class _ScreensWrapperState extends State<ScreensWrapper> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const MarketScreen(),
    const ProfileScreen(),
    SummaryScreen(),
    //const SummaryScreen(summary: null,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_sharp),
            label: 'Book Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge_sharp),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: 'Summary',
          ),
        ],
      ),
    );
  }
}