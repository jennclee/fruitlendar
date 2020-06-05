import 'fruit.dart';

class Season {
  String name;
  String image;
  List<Fruit> fruits;

  Season({this.name, this.image, this.fruits});

  factory Season.fromJson(Map<String, dynamic> jsonData) {
    List<Fruit> fruitlist = [];
    for (var i = 0; i < jsonData['fruits'].length; i++) {
      fruitlist.add(new Fruit.fromJson(jsonData['fruits'][i]));
    }

    return Season(
      name: jsonData['name'],
      image: jsonData['imageLink'],
      fruits: fruitlist,
    );
  }
}
