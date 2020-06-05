import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/fruit.dart';

class FruitCard extends StatelessWidget {
  final Fruit fruit;

  FruitCard(this.fruit);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: SafeArea(
        child: CupertinoButton(
          child: Column(
            children: [
              Expanded(
                child: Container(
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
                  alignment: Alignment.bottomCenter,
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
          onPressed: () {
            print('Clicked fruit!');
          },
        ),
      ),
    );
  }
}
