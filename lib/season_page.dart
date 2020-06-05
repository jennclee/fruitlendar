import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/season.dart';
import 'models/fruit.dart';
import 'fruit_card.dart';

class SeasonPage extends StatelessWidget {
  static const routeName = '/season';

  @override
  Widget build(BuildContext context) {
    final Season args = ModalRoute.of(context).settings.arguments;

    List<FruitCard> fruitList = [];

    for (var i = 0; i < args.fruits.length; i++) {
      Fruit currentFruit = args.fruits[i];
      fruitList.add(new FruitCard(new Fruit(
          name: currentFruit.name,
          image: currentFruit.image,
          info: currentFruit.info)));
    }

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(args.name),
        ),
        backgroundColor: Colors.amber[100],
        child: Center(
          child: Container(
            child: GridView.count(
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              crossAxisCount: 2,
              children: fruitList,
            ),
          ),
        ));
  }
}
