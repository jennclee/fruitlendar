import 'package:flutter/material.dart';

final springContainer = Container(
  color: Colors.lightGreen[200],
  child: const Text('Spring'),
  height: 100,
);

final summmerContainer = Container(
  color: Colors.amber,
  child: const Text('Summer'),
  height: 100,
);

final autumnContainer = Container(
  color: Colors.orange[700],
  child: const Text('Autumn'),
  height: 100,
);

final winterContainer = Container(
  color: Colors.lightBlue[300],
  child: const Text('Winter'),
  height: 100,
);

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
