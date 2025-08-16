import 'package:flutter/material.dart';
import 'package:trade_app/botton_navigation_screen/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(splashColor: Colors.transparent),
      home: BottomNavigationPages(),
    );
  }
}
