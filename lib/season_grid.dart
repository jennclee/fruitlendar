import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/app_state_model.dart';
import 'styles.dart';
import 'models/season.dart';
import 'image_card.dart';

class SeasonGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(builder: (context, model, child) {
      List<Widget> seasonsList = [];
      final List<Season> seasons = model.getNonCurrentSeasons();
      seasons.forEach((season) => {
            seasonsList.add(Column(children: [new ImageCard(season)]))
          });
      return SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            children: [
              Row(children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Explore other seasons',
                    textAlign: TextAlign.left,
                    style: Styles.header,
                  ),
                ),
              ]),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: seasonsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.only(right: 10),
                        child: seasonsList[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
