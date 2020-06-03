import 'package:flutter/material.dart';

Widget imageCard(String seasonName, Color color, String imageLocation) {
  return Card(
    color: color,
    child: InkWell(
      splashColor: color.withAlpha(30),
      onTap: () {
        print('Card tapped');
      },
      child: Container(
        height: 200,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage(imageLocation),
            fit: BoxFit.cover,
          ),
        ),
        child: new Text(
          seasonName,
          style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
        margin: const EdgeInsets.all(5),
      ),
    ),
  );
}
