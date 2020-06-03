import 'package:flutter/material.dart';
import 'image_card.dart';

final springContainer =
    imageCard('Spring', Colors.pink[100], 'images/spring-border-unsplash.jpg');
final summmerContainer = imageCard(
    'Summer', Colors.lightBlue[100], 'images/summer-border-unsplash.jpg');
final autumnContainer =
    imageCard('Autumn', Colors.orange[700], 'images/autumn-unsplash.jpg');
final winterContainer = imageCard(
    'Winter', Colors.blueGrey[200], 'images/winter-border-unsplash.jpg');

Widget seasonGrid = Container(
    padding: const EdgeInsets.all(25),
    child: Column(children: [
      Row(children: [
        Expanded(child: springContainer),
        Expanded(child: summmerContainer)
      ]),
      Row(children: [
        Expanded(child: autumnContainer),
        Expanded(child: winterContainer)
      ]),
    ]));
