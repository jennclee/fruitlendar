import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(this.title, style: TextStyle(color: Colors.black87)),
      ),
      child: Column(children: [
        heroSection,
        SeasonGrid(),
      ]),
    );
  }
}
