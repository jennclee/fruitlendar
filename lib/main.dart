import 'dart:async' show Future;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'models/season.dart';
import 'hero.dart';
import 'season_grid.dart';
import 'season_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Fruitlendar';

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: _title,
        theme: CupertinoThemeData(
          barBackgroundColor: Colors.orange,
          primaryColor: Colors.orange,
          primaryContrastingColor: Colors.lightGreen[300],
          scaffoldBackgroundColor: Colors.amber[100],
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(color: Colors.black87),
          ),
        ),
        home: MyHomePage(title: _title),
        routes: {
          SeasonPage.routeName: (context) => SeasonPage(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final String title;

  MyHomePageState({this.title});
  Future<Map<String, Season>> _seasons;

  @override
  void initState() {
    super.initState();

    _seasons = loadSeasons();
  }

  Future<Map<String, Season>> loadSeasons() async {
    String jsonString =
        await rootBundle.loadString('lib/fixtures/seasonsDict.json');
    Map<String, dynamic> jsonResponse = json.decode(jsonString);
    Map<String, Season> seasons = {};
    jsonResponse
        .forEach((key, value) => {seasons[key] = new Season.fromJson(value)});
    return seasons;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Map<String, Season> seasons = snapshot.data;
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle:
                  Text(widget.title, style: TextStyle(color: Colors.black87)),
            ),
            child: Column(children: [
              heroSection,
              SeasonGrid(seasons),
            ]),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
      future: _seasons,
    );
  }
}
