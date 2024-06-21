import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/riwayat/riwayat.dart';
import '../mua_home_screen.dart';
import '../screens/profile/profile_screen.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const MuaLocaterHome(),
    HistoryPage(),
    Profile(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          color: Color.fromARGB(225, 152, 180, 255),
          backgroundColor: Colors.white,
          height: 70.0,
          items: const <Widget>[
            Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0), size: 20.0),
            Icon(Icons.receipt,
                color: Color.fromARGB(255, 0, 0, 0), size: 20.0),
            Icon(Icons.person_pin,
                color: Color.fromARGB(255, 0, 0, 0), size: 20.0),
          ],
          animationDuration: const Duration(milliseconds: 200),
          index: 0,
          animationCurve: Curves.bounceInOut,
          onTap: onTappedBar),
    );
  }
}
