import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flip_card/flip_card.dart';
import 'models/fruit.dart';
import 'styles.dart';

class FruitCard extends StatelessWidget {
  final Fruit fruit;

  FruitCard(this.fruit);

  BoxDecoration basicCard() {
    return BoxDecoration(
      color: Colors.amber[50],
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      child: SafeArea(
        child: CupertinoButton(
          padding: const EdgeInsets.all(10),
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Column(
              children: [
                Container(
                  height: 100,
                  width: 200,
                  alignment: Alignment.center,
                  child: Image.asset(
                    fruit.image,
                    height: 60,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                  ),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                  child: Text(
                    fruit.name,
                    style: Styles.fruitCardTitle,
                  ),
                ),
              ],
            ),
            back: Container(
              height: 150,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                fruit.info,
                style: Styles.cardDescription,
              ),
            ),
          ),
          onPressed: () {
            print('Clicked fruit!');
          },
        ),
      ),
    );
  }
}
