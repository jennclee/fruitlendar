import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flip_card/flip_card.dart';
import 'models/fruit.dart';

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
      height: 200,
      width: 200,
      child: SafeArea(
        child: CupertinoButton(
          child: FlipCard(
            direction: FlipDirection.HORIZONTAL,
            front: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 200,
                    child: Image.asset(
                      fruit.image,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber[50],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 25,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.amber[50],
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)),
                    ),
                    child: Text(
                      fruit.name,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            back: Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.amber[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'back!',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
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
