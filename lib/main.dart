import 'package:flutter/material.dart';
import 'hero.dart';
import 'season_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Fruitlendar';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.lightGreen[300],
      ),
      home: MyHomePage(title: _title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(children: [
        heroSection,
        SeasonGrid(),
      ]),
    );
  }
}
