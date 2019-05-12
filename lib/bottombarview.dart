import 'package:flutter/material.dart';

class MyBottomBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottombar View',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _children = [
    Center(child: Text('Home')),
    Center(child: Text('Hotel')),
    Center(child: Text('Map'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottombar Navigation'),
        elevation: 5.0,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.amber),
        BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            title: Text('Hotel'),
            backgroundColor: Colors.amber),
        BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Map'),
            backgroundColor: Colors.amber)
      ],
    );
  }

  void onTabTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
