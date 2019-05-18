import 'package:flutter/material.dart';
import './tabpage1.dart';
import './tabpage2.dart';

class MyTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab View'),
            elevation: 5.0,
            bottom: TabBar(
              tabs: createTabs(),
              indicatorColor: Colors.white,
            ),
          ),
          body: _getHomePageReady(),
        ));
  }

  List<Widget> createTabs() {
    return [
      Column(
        children: <Widget>[Icon(Icons.ac_unit), Text('Page 1')],
      ),
      Column(
        children: <Widget>[Icon(Icons.spa), Text('Page 2')],
      )
    ];
  }

  Widget _getHomePageReady() {
    return TabBarView(children: [
      Center(
        child: TabPage1(),
      ),
      Center(
        child: TabPage2(),
      )
    ]);
  }
}
