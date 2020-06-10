import 'package:flutter/material.dart';
import 'models/season.dart';
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
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
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
