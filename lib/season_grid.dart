import 'package:flutter/material.dart';
import 'season_card.dart';

final springContainer = seasonCard('Spring', Colors.lightGreen[300]);
final summmerContainer = seasonCard('Summer', Colors.amber);
final autumnContainer = seasonCard('Autumn', Colors.orange[700]);
final winterContainer = seasonCard('Winter', Colors.lightBlue[300]);

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
