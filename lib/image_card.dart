import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'models/season.dart';
import 'styles.dart';
import 'season_page.dart';

class ImageCard extends StatelessWidget {
  final Season season;

  ImageCard(this.season);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
        BoxShadow(
          color: Color.fromARGB(30, 0, 0, 1),
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(3, 4),
        )
      ]),
      child: CupertinoButton(
        color: Styles.containerColor,
        borderRadius: BorderRadius.circular(30),
        padding: EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xDD000000),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Styles.avatarBackground,
                    backgroundImage: AssetImage(season.image),
                  ),
                ),
              ),
              Text(
                season.name,
                style: Styles.fruitCardTitle,
              ),
            ],
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
    );
  }
}
