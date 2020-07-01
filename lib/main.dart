import 'package:flutter/material.dart';
import 'package:sager/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sager',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
