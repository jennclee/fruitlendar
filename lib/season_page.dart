import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/season.dart';

class SeasonPage extends StatelessWidget {
  static const routeName = '/season';

  @override
  Widget build(BuildContext context) {
    final Season args = ModalRoute.of(context).settings.arguments;

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(args.name),
        ),
        child: Center(
          child: Container(
            color: Colors.blueGrey,
            child: Text('Fruits list'),
          ),
        ));
  }
}
