import 'package:flutter/foundation.dart';

class Fruit {
  const Fruit({
    @required this.name,
    @required this.image,
    @required this.info,
    @required this.guide,
    @required this.seasons,
  })  : assert(name != null),
        assert(image != null),
        assert(info != null),
        assert(guide != null),
        assert(seasons != null);

  final String name;
  final String image;
  final String info;
  final String guide;
  final List<String> seasons;
}
