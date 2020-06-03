import 'package:flutter/material.dart';

Widget seasonCard(String seasonName, Color color) {
  return Card(
    color: color,
    child: InkWell(
      splashColor: color.withAlpha(30),
      onTap: () {
        print('Card tapped');
      },
      child: Container(
        child: Text(seasonName),
        height: 100,
        margin: const EdgeInsets.all(5),
      ),
    ),
  );
}
