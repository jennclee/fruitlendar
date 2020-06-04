import 'package:flutter/cupertino.dart';
import 'models/season.dart';

class SeasonPage extends StatelessWidget {
  static const routeName = '/season';

  @override
  Widget build(BuildContext context) {
    final SeasonModel args = ModalRoute.of(context).settings.arguments;

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(args.name),
        ),
        child: Center(
          child: Container(
            color: args.mainColor,
            child: Text('Fruits list'),
          ),
        ));
  }
}
