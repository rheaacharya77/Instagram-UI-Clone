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
    Text('Shop'),
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
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  'images/title.png',
                  fit: BoxFit.cover,
                  height: 40,
                ),
              ),
              Row(
                children: [
                  Image.asset('images/heart.png', height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Image.asset(
                      'images/dm.png',
                      height: 32,
                      
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_filled),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search_outlined),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('images/post_active.png'),
              ),
              activeIcon: ImageIcon(
                AssetImage('images/post_active.png'),
              ),
              title: Text('Post'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              activeIcon: Icon(Icons.shopping_bag),
              title: Text('Shop'),
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
