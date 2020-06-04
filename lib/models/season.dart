import 'package:flutter/material.dart';

class SeasonModel {
  final String name;
  final Color mainColor;
  final String imageLink;

  SeasonModel(this.name, this.mainColor, this.imageLink);
}

final springModel = new SeasonModel(
    'Spring', Colors.pink[100], 'images/spring-cherry-blossom-unsplash.jpg');

final summerModel = new SeasonModel(
    'Summer', Colors.lightBlue[100], 'images/summer-border-unsplash.jpg');

final autumnModel = new SeasonModel(
    'Autumn', Colors.orange[700], 'images/autumn-trees-unsplash.jpg');

final winterModel = new SeasonModel(
    'Winter', Colors.blueGrey[200], 'images/winter-mountain-unsplash.jpg');
