import 'fruit.dart';

class Season {
  String name;
  String imageLink;
  List<Fruit> fruits;

  Season({this.name, this.imageLink, this.fruits});

  factory Season.fromJson(Map<String, dynamic> jsonData) {
    List<Fruit> fruitlist = [];
    for (var i = 0; i < jsonData['fruits'].length; i++) {
      fruitlist.add(new Fruit.fromJson(jsonData['fruits'][i]));
    }

    return Season(
      name: jsonData['name'],
      imageLink: jsonData['imageLink'],
      fruits: fruitlist,
    );
  }
}
