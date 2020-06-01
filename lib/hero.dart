import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  HeroSection({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                      75.0,
                ),
                padding: const EdgeInsets.all(25.0),
                color: Colors.amber[100],
                child: Text(
                  'Welcome to Fruitlendar! \n🍎🍊🍐🍑',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black87,
                  ),
                ))));
  }
}
