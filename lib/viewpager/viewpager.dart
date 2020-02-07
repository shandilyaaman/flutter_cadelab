import 'package:flutter/material.dart';
import 'package:flutter_codelab/commons/commonwidgets.dart';

class ViewPagerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.commonAppBar("View Pager Sample"),
      body: _ViewPagerWidget(),
    );
  }
}

class _ViewPagerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ViewPagerState();
  }
}

class _ViewPagerState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ) +
                Border.all(width: 2, color: Colors.black),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: CommonWidgets.imageFromNetwork(
                'https://images.pexels.com/photos/257360/pexels-photo-257360.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),
          Card(
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ) +
                Border.all(width: 2, color: Colors.black),
            borderOnForeground: true,
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: CommonWidgets.imageFromNetwork(
                'https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),
          Card(
            shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ) +
                Border.all(width: 2, color: Colors.black),
            borderOnForeground: true,
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: CommonWidgets.imageFromNetwork(
                'https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          )
        ],
        scrollDirection: Axis.horizontal,
        reverse: false,
        pageSnapping: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
