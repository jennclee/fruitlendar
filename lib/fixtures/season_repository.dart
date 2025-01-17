import 'package:fruitlendar/models/season.dart';

class SeasonRepository {
  static const _allSeasons = <Season>[
    Season(
      name: "Spring",
      image: "images/tulip.png",
      description: "Spring brings the beginning of stone fruit season.",
      monthsNA: [3, 4, 5],
    ),
    Season(
      name: "Summer",
      image: "images/coconut-tree.png",
      description: "Summer brings berry season",
      monthsNA: [6, 7, 8],
    ),
    Season(
      name: "Autumn",
      image: "images/leaves.png",
      description: "Hearty fruits show up in Autumn",
      monthsNA: [9, 10, 11],
    ),
    Season(
      name: "Winter",
      image: "images/snowflake.png",
      description: "Citrus fruits are great during Winter",
      monthsNA: [12, 1, 2],
    ),
  ];

  static Season loadCurrentSeason(int month) {
    return _allSeasons.where((season) => season.monthsNA.contains(month)).first;
  }

  static List<Season> loadNonCurrentSeasons(int month) {
    return _allSeasons
        .where((season) => !season.monthsNA.contains(month))
        .toList();
  }
}
