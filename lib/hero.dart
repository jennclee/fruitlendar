import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'styles.dart';
import 'models/app_state_model.dart';
import 'season_page.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(builder: (context, model, child) {
      final currentSeason = model.getCurrentSeason();
      return SliverToBoxAdapter(
        child: Container(
          margin: EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Current season",
                    style: Styles.header,
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
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
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 37,
                              backgroundColor: Color(0xDD000000),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundColor: Styles.avatarBackground,
                                backgroundImage:
                                    AssetImage(currentSeason.image),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      currentSeason.name,
                                      style: Styles.fruitCardTitle,
                                    ),
                                    Text(
                                      'See fruits',
                                      style: Styles.cardDescription,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  CupertinoIcons.right_chevron,
                                  color: Color(0xDD000000),
                                  size: 50,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          SeasonPage.routeName,
                          arguments: currentSeason,
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
