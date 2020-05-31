import 'package:flutter/material.dart';

import 'bottomNavigation.dart';

void main() => runApp(MyApp());

final ThemeData _themeData = ThemeData(textTheme: TextTheme());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
            display1: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 13,
              color: Colors.black,
            ),
            display2: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          display3: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 18,
            color: Colors.black,
          ),),
      ),
      home: BottomNavigation(),
      title: 'Bottom Navigation',
    );
  }
}
