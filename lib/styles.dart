import 'package:flutter/widgets.dart';

abstract class Styles {
  static const TextStyle header = TextStyle(
    color: Color(0xDD000000),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle imageCardTitle = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle fruitCardTitle = TextStyle(
    color: Color(0xDD000000),
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle cardDescription = TextStyle(
    color: Color(0xDD000000),
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const scaffoldBackground = Color(0xFFEEEEEE);
  static const containerColor = Color(0xFFFFF8E1);
}
