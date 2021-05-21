import 'package:flutter/material.dart';

import './homeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyInsta(),
    );
  }
}

class MyInsta extends StatefulWidget {
  @override
  _MyInstaState createState() => _MyInstaState();
}

class _MyInstaState extends State<MyInsta> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text('Search'),
    Text('Post'),
    Text('Activity'),
    Text('Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('images/camera.png', height: 35),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Image.asset(
                      'images/title.png',
                      fit: BoxFit.cover,
                      height: 40,
                    ),
                  ),
                ],
              ),
              Image.asset('images/message.png', height: 35),
            ],
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/home.png'),
              ),
              activeIcon: ImageIcon(
                AssetImage('images/home_active.png'),
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/search.png'),
              ),
              activeIcon: ImageIcon(
                AssetImage('images/search_active.png'),
              ),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/post.png'),
              ),
              activeIcon: ImageIcon(
                AssetImage('images/post_active.png'),
              ),
              title: Text('Post'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/heart.png'),
              ),
              activeIcon: ImageIcon(
                AssetImage('images/heart_active.png'),
              ),
              title: Text('Activity'),
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('images/riya.jpg'),
              ),
              activeIcon: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('images/riya.jpg'),
                  ),
                ),
              ),
              title: Text('Profile'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black87,
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
