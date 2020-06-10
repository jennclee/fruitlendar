import 'package:flutter/material.dart';
import 'models/season.dart';
import 'styles.dart';
import 'image_card.dart';

class HeroSection extends StatelessWidget {
  final Season currentSeason;

  HeroSection(this.currentSeason);

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  'Current season',
                  textAlign: TextAlign.left,
                  style: Styles.header,
                ),
              ),
            ],
          ),
          Row(
            children: [new ImageCard(currentSeason)],
          )
        ],
      ),
    );
  }
}
