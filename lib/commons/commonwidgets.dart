import 'package:flutter/material.dart';

class CommonWidgets {
  static Card card(_cardHeight, cardColor, cardName, cardIcon) {
    return Card(
      child: new Container(
        child: Column(
          children: [
            Icon(
              cardIcon,
              color: Colors.white,
            ),
            Text(
              cardName,
              style: TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        height: _cardHeight,
        margin: EdgeInsets.all(20),
      ),
      elevation: 3.0,
      color: cardColor,
      borderOnForeground: true,
    );
  }

  static AppBar commonAppBar(String title) {
    return AppBar(
      title: Text(title),
      elevation: 5.0,
    );
  }

  static Image imageFromNetwork(String image_url) {
    return Image.network(image_url, fit: BoxFit.fill,);
  }
}
