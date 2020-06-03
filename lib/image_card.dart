import 'package:flutter/material.dart';
import 'models/season.dart';

class ImageCard extends StatelessWidget {
  final SeasonModel season;

  ImageCard(this.season);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: season.mainColor,
      child: InkWell(
        splashColor: season.mainColor.withAlpha(30),
        onTap: () {
          print('hello');
        },
        child: Container(
          height: 200,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage(season.imageLink),
              fit: BoxFit.cover,
            ),
          ),
          child: new Text(
            season.name,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          margin: const EdgeInsets.all(5),
        ),
      ),
    );
  }
}
