import 'package:flutter/material.dart';

Widget heroSection = Row(children: [
  Expanded(
      child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            'Welcome to Fruitlendar! \n🍎🍊🍐🍑',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.black87,
            ),
          )))
]);
