import 'package:bottom_navigation_bar/screens/courcesScreen.dart';
import 'package:bottom_navigation_bar/screens/favoriteScreen.dart';
import 'package:bottom_navigation_bar/screens/homeScreen.dart';
import 'package:bottom_navigation_bar/screens/searchScreen.dart';
import 'package:bottom_navigation_bar/screens/userAccountScreen.dart';
import 'package:flutter/material.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final tabs = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    CourcesScreen(),
    UserAccountScreen(),


  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.grey[100],
            child: tabs[_currentIndex],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/icons/home1.png")),
              title: Container(),
              activeIcon: SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/icons/home2.png")),
            ),
            BottomNavigationBarItem(
                icon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/search1.png")),
                title: Container(),
                activeIcon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/search2.png"))),
            BottomNavigationBarItem(
                icon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/heart1.png")),
                title: Container(),
                activeIcon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/heart2.png"))),
            BottomNavigationBarItem(
                icon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/play1.png")),
                title: Container(),
                activeIcon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/play2.png"))),
            BottomNavigationBarItem(
                icon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/user1.png")),
                title: Container(),
                activeIcon: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/icons/user2.png"))),
          ],
        ),
      ),
    );
  }
}
