import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/season.dart';
import 'styles.dart';
import 'image_card.dart';

class SeasonGrid extends StatelessWidget {
  final Map<String, Season> seasons;

  SeasonGrid(this.seasons);

  @override
  Widget build(BuildContext context) {
    List<Widget> seasonsList = [];
    this.seasons.forEach((key, value) => {
          seasonsList.add(Column(children: [new ImageCard(value)]))
        });
    return Container(
      child: Column(
        children: [
          Row(children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Text(
                'Explore other seasons',
                textAlign: TextAlign.left,
                style: Styles.header,
              ),
            ),
          ]),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: seasonsList,
          ),
        ],
      ),
    );
  }
}
