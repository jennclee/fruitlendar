import 'package:flutter/foundation.dart';

class Season {
  const Season({
    @required this.name,
    @required this.image,
    @required this.description,
    @required this.monthsNA,
  })  : assert(name != null),
        assert(image != null),
        assert(description != null),
        assert(monthsNA != null);

  final String name;
  final String image;
  final String description;
  final List<int> monthsNA;
}
