import 'package:flutter/material.dart';
import 'package:flutter_codelab/commons/commonwidgets.dart';
import './listview.dart';
import './listwithdifferentviews.dart';

class ListViewTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonWidgets.commonAppBar('ListView'),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('ListView'),
              subtitle: Text('A list view with Images and text'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyListView()),
                );
              },
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            ListTile(
                title: Text('ListView with different views'),
                subtitle:
                    Text('A listview with different views as per coditions.'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListWithDynamicViews()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
