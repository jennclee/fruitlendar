import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/season.dart';
import 'season_page.dart';

class ImageCard extends StatelessWidget {
  final Season season;

  ImageCard(this.season);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: 200,
      child: SafeArea(
        child: CupertinoButton(
          child: Container(
            height: 200,
            // width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(season.image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              margin: EdgeInsets.all(7),
              child: Text(
                season.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              SeasonPage.routeName,
              arguments: season,
            );
          },
        ),
      ),
    );
  }
}
