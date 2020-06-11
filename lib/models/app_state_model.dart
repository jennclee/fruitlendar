import 'package:flutter/foundation.dart' as foundation;

import 'season.dart';
import 'fruit.dart';
import 'package:fruitlendar/fixtures/season_repository.dart';
import 'package:fruitlendar/fixtures/fruit_repository.dart';

class AppStateModel extends foundation.ChangeNotifier {
  AppStateModel() {
    DateTime currentDate = new DateTime.now();
    this._currentMonth = currentDate.month;
  }

  Season _currentSeason;
  List<Season> _nonCurrentSeasons;
  int _currentMonth;

  Season getCurrentSeason() {
    return _currentSeason;
  }

  List<Season> getNonCurrentSeasons() {
    return _nonCurrentSeasons;
  }

  List<Fruit> getFruits(String seasonName) {
    return FruitRepository.loadFruits(seasonName);
  }

  void loadSeasons() {
    _currentSeason = SeasonRepository.loadCurrentSeason(_currentMonth);
    _nonCurrentSeasons = SeasonRepository.loadNonCurrentSeasons(_currentMonth);
    notifyListeners();
  }
}
