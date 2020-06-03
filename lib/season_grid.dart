import 'package:flutter/material.dart';
import 'image_card.dart';
import 'models/season.dart';

class SeasonGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          Row(children: [
            Expanded(child: new ImageCard(springModel)),
            Expanded(child: new ImageCard(summerModel))
          ]),
          Row(children: [
            Expanded(child: new ImageCard(autumnModel)),
            Expanded(child: new ImageCard(winterModel))
          ]),
        ]));
  }
}
