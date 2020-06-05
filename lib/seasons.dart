import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'models/season.dart';

Future loadSeasons() async {
  String jsonString = await rootBundle.loadString('fixtures/spring.json');
  Map<String, dynamic> jsonResponse = json.decode(jsonString);
  Season seasonList = new Season.fromJson(jsonResponse);
  return seasonList;
}
