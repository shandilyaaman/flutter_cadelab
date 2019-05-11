import 'package:flutter/material.dart';

import './city.dart';

class MyListView extends StatelessWidget {
  final List<City> _allCities = City.allCities();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
          elevation: 3.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: getHomePageReady(context),
        ),
      ),
    );
  }

  ListView getHomePageReady(BuildContext context) {
    return ListView.builder(
      itemBuilder: _getItemUi,
      padding: EdgeInsets.all(0.0),
      itemCount: _allCities.length,
    );
  }

  Widget _getItemUi(context, index) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Image.asset(
              'assets/' + _allCities[index].image,
              height: 100.0,
              width: 100.0,
            ),
            title: Text(
              _allCities[index].name,
              style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            subtitle: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(_allCities[index].country,
                      style: new TextStyle(
                          fontSize: 13.0, fontWeight: FontWeight.normal)),
                  new Text('Population: ${_allCities[index].population}',
                      style: new TextStyle(
                          fontSize: 11.0, fontWeight: FontWeight.normal)),
                ]),
            onTap: () {
              _showSnackBar(context, _allCities[index]);
            },
          )
        ],
      ),
    );
  }

  _showSnackBar(BuildContext context, City item) {
    final SnackBar objSnackbar = new SnackBar(
      content: new Text("${item.name} is a city in ${item.country}"),
      backgroundColor: Colors.amber,
    );
    Scaffold.of(context).showSnackBar(objSnackbar);
  }
}
