import 'package:flutter/material.dart';
import 'models/season.dart';

class SeasonPage extends StatelessWidget {
  static const routeName = '/season';

  @override
  Widget build(BuildContext context) {
    final SeasonModel args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: Center(
          child: Container(
            color: args.mainColor,
            child: Text('Fruits list'),
          ),
        ));
  }
}
