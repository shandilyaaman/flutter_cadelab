import 'package:flutter/material.dart';

class MyBottomBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
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
  List<Color> colors = [
    Colors.greenAccent,
    Colors.amberAccent,
    Colors.black12
  ];
  List<Widget> _children = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.greenAccent,
      child: Center(child: Text('Home')),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amberAccent,
      child: Center(child: Text('Hotel')),
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
      child: Center(child: Text('Map')),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottombar Navigation'),
        elevation: 5.0,
        backgroundColor: colors[_currentIndex],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: onTabTapped,
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.shifting,
      elevation: 8.0,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.green),
        BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            title: Text('Hotel'),
            backgroundColor: Colors.amber),
        BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('Map'),
            backgroundColor: Colors.black)
      ],
    );
  }

  void onTabTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
