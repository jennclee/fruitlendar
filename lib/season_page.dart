import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'models/app_state_model.dart';
import 'models/season.dart';
import 'models/fruit.dart';
import 'fruit_card.dart';

class SeasonPage extends StatelessWidget {
  static const routeName = '/season';

  @override
  Widget build(BuildContext context) {
    final Season args = ModalRoute.of(context).settings.arguments;

    return CupertinoPageScaffold(
        child: Consumer<AppStateModel>(builder: (context, model, child) {
      List<Fruit> fruits = model.getFruits();
      List<FruitCard> fruitCardList = [];
      for (var i = 0; i < fruits.length; i++) {
        fruitCardList.add(new FruitCard(fruits[i]));
      }
      return CustomScrollView(
        semanticChildCount: fruits.length,
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text(args.name),
          ),
          SliverSafeArea(
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              children: fruitCardList,
            ),
          ),
        ],
      );
    }));
  }
}
