import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_card.dart';
import 'models/season.dart';

class SeasonGrid extends StatelessWidget {
  final Map<String, Season> seasons;

  SeasonGrid(this.seasons);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(children: [
            Expanded(child: new ImageCard(seasons['Spring'])),
            Expanded(child: new ImageCard(seasons['Summer'])),
          ]),
          Row(
            children: [
              Expanded(child: new ImageCard(seasons['Autumn'])),
              Expanded(child: new ImageCard(seasons['Winter'])),
            ],
          ),
        ],
      ),
    );
  }
}
