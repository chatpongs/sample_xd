import 'package:flutter/material.dart';
import './screens/main.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample XD',
      home: Main(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.pinkAccent,
      ),
    );
  }
}