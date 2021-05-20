import 'package:flutter/material.dart';

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

  final List<Widget> _widgetOptions = <Widget>[
    Text('a'),
    Text('b'),
    Text('c'),
    Text('d'),
    Text('e')
  ];

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
                  )
                ],
              ),
              Image.asset('images/message.png', height: 35),
            ],
          ),
          
        ),
      ),
    );
  }
}
