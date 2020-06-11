import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'styles.dart';
import 'models/app_state_model.dart';
import 'image_card.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(builder: (context, model, child) {
      final currentSeason = model.getCurrentSeason();
      return SliverToBoxAdapter(
        child: Container(
          color: Styles.containerColor,
          child: Column(
            children: [
              Text(
                "Current season",
                style: Styles.header,
                textAlign: TextAlign.left,
              ),
              ImageCard(currentSeason),
            ],
          ),
        ),
      );
    });
  }
}
