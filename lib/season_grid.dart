import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_card.dart';
import 'models/season.dart';
import 'seasons.dart';

class SeasonGrid extends StatefulWidget {
  @override
  SeasonGridState createState() => SeasonGridState();
}

class SeasonGridState extends State<SeasonGrid> {
  Future _season;

  @override
  void initState() {
    super.initState();

    _season = loadSeasons();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Season season = snapshot.data;
          return Container(
            child: Column(
              children: [
                Row(children: [
                  Expanded(child: new ImageCard(season)),
                  Expanded(child: new ImageCard(season)),
                ]),
                Row(
                  children: [
                    Expanded(child: new ImageCard(season)),
                    Expanded(child: new ImageCard(season)),
                  ],
                ),
              ],
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
      future: _season,
    );
  }
}
