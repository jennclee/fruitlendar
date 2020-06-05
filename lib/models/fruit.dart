class Fruit {
  final String name;
  final String image;
  final String info;

  Fruit({this.name, this.image, this.info});

  factory Fruit.fromJson(Map<String, dynamic> jsonData) {
    return Fruit(
        name: jsonData['name'],
        image: jsonData['image'],
        info: jsonData['info']);
  }
}
