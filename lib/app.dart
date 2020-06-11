import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'models/app_state_model.dart';
import 'styles.dart';
import 'season_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Fruitlendar',
        theme: CupertinoThemeData(
          barBackgroundColor: Colors.orange,
          primaryColor: Colors.orange,
          primaryContrastingColor: Colors.lightGreen[300],
          scaffoldBackgroundColor: Styles.scaffoldBackground,
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(color: Colors.black87),
          ),
        ),
        home: MyHomePage(),
        routes: {
          SeasonPage.routeName: (context) => SeasonPage(),
        });
  }
}

class MyHomePage extends StatelessWidget {
  DateTime currentTime = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Consumer<AppStateModel>(builder: (context, model, child) {
        return CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Fruitlendar'),
            ),
          ],
        );
      }),
    );
  }
}
