import 'package:flutter/material.dart';
import './screens/main.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample XD',
      home: Main(),
      theme: ThemeData(
        primaryColor: Color(0xFF6100ED),
        accentColor: Color(0xFFED00AE),
      ),
    );
  }
}