import 'package:flutter/material.dart';

import './home.dart';
import './blog.dart';
import './about.dart';

final List<Widget> _screens = [Home(), Blog(), About()];
final List<String> _names = ['Home', 'Blog', 'About'];

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainState();
}

class _MainState extends State<Main> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_names[currentIndex]),
      ),
      body: Center(
        child: _screens[currentIndex],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          primaryColor: Colors.white,
          canvasColor: Theme.of(context).primaryColor,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: new TextStyle(
                  color: Colors.white54,
                ),
              ),
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('Blog'),
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              title: Text('About'),
              icon: Icon(Icons.person),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
