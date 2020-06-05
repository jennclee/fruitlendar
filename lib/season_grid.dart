import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'image_card.dart';
import 'models/season.dart';

class SeasonGrid extends StatefulWidget {
  @override
  SeasonGridState createState() => SeasonGridState();
}

class SeasonGridState extends State<SeasonGrid> {
  Future<List<Season>> _season;

  @override
  void initState() {
    super.initState();

    _season = loadSeasons();
  }

  Future<List<Season>> loadSeasons() async {
    String jsonString = await rootBundle.loadString('fixtures/seasons.json');
    List<dynamic> jsonResponse = json.decode(jsonString);
    List<Season> seasons = [];
    for (var i = 0; i < jsonResponse.length; i++) {
      seasons.add(new Season.fromJson(jsonResponse[i]));
    }
    return seasons;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Season> seasons = snapshot.data;
          return Container(
            child: Column(
              children: [
                Row(children: [
                  Expanded(child: new ImageCard(seasons[0])),
                  Expanded(child: new ImageCard(seasons[1])),
                ]),
                Row(
                  children: [
                    Expanded(child: new ImageCard(seasons[2])),
                    Expanded(child: new ImageCard(seasons[3])),
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
