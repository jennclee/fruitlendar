import 'package:fruitlendar/models/fruit.dart';

class FruitRepository {
  static const _allFruits = <Fruit>[
    Fruit(
      name: "apple",
      image: "images/apple.png",
      info:
          "There are many types of apples. Fuji, Granny Smith, Pink Lady just to name a few.",
      guide: "Picking apples requires skill",
      seasons: ["Spring", "Summer", "Autumn", "Winter"],
    ),
    Fruit(
      name: "apricot",
      image: "images/apricot.png",
      info: "Yum apricots!",
      guide: "Picking apricots requires skill",
      seasons: ["Spring", "Summer"],
    ),
    Fruit(
      name: "avocado",
      image: "images/avocado.png",
      info: "Yum avocado!",
      guide:
          "Gently pushing on the stem of the avocado will indicate how ripe it is. The easier it is to push in, the more ripe the friut is. You can also gently press the bottom of the avocado to gauge ripeness.",
      seasons: ["Spring", "Summer", "Winter"],
    ),
    Fruit(
      name: "banana",
      image: "images/banana.png",
      info: "I'm bananas over bananas!",
      guide: "Picking blackberries requires skill",
      seasons: ["Spring", "Summer", "Autumn", "Winter"],
    ),
    Fruit(
      name: "blackberry",
      image: "images/blackcurrant.png",
      info: "Yum blackberries!",
      guide:
          "Bananas show their ripeness through the peel. Bananas will turn from green to yellow with brown spots as they become more ripe.",
      seasons: ["Summer"],
    ),
    Fruit(
      name: "blueberry",
      image: "images/blueberry.png",
      info: "Yum blueberries!",
      guide: "Picking blueberries requires skill",
      seasons: ["Summer"],
    ),
    Fruit(
      name: "cantaloupe",
      image: "images/melon.png",
      info:
          "What did the honeydew say to the watermelon?\nI love you, but we just cantaloupe!",
      guide: "Picking cantaloupes requires skill",
      seasons: ["Summer"],
    ),
    Fruit(
      name: "cherry",
      image: "images/cherry.png",
      info: "Yum cherries!",
      guide: "Picking cherries requires skill",
      seasons: ["Summer"],
    ),
    Fruit(
      name: "cranberry",
      image: "images/cranberry.png",
      info: "Yum cranberries!",
      guide: "Picking cranberries requires skill",
      seasons: ["Autumn"],
    ),
    Fruit(
      name: "grape",
      image: "images/grapes.png",
      info: "This season is grape for all kinds of fruits!",
      guide: "Picking grapes requires skill",
      seasons: ["Autumn"],
    ),
    Fruit(
      name: "grapefruit",
      image: "images/grapefruit.png",
      info: "Yum grapefruit!",
      guide: "Picking grapefruit requires skill",
      seasons: ["Winter"],
    ),
    Fruit(
      name: "honeydew",
      image: "images/melon.png",
      info: "Yum honeydew!",
      guide: "Picking honeydew requires skill",
      seasons: ["Summer"],
    ),
    Fruit(
      name: "kiwi",
      image: "images/kiwi.png",
      info: "Yum kiwi!",
      guide: "Picking kiwi requires skill",
      seasons: ["Spring", "Autumn", "Winter"],
    ),
    Fruit(
      name: "mango",
      image: "images/mango.png",
      info: "Yum mango!",
      guide: "Picking mangoes requires skill",
      seasons: ["Summer", "Autumn"],
    ),
    Fruit(
      name: "orange",
      image: "images/orange.png",
      info: "Orange you glad you picked this fruit?",
      guide: "Picking oranges requires skill",
      seasons: ["Winter"],
    ),
    Fruit(
      name: "peach",
      image: "images/peach.png",
      info: "Some folks are peachy keen on peaches.",
      guide: "Picking peaches requires skill",
      seasons: ["Summer"],
    ),
    Fruit(
      name: "pear",
      image: "images/pear.png",
      info: "Peary nice to meet ya!",
      guide: "Picking pears requires skill",
      seasons: ["Autumn", "Winter"],
    ),
    Fruit(
      name: "pineapple",
      image: "images/pineapple.png",
      info: "Yum pineapple!",
      guide: "Ripe pineapples will typically have a strong sweet scent.",
      seasons: ["Spring", "Autumn", "Winter"],
    ),
    Fruit(
      name: "plum",
      image: "images/plum.png",
      info: "Why so glum plum?",
      guide: "Picking plumns requires skill",
      seasons: ["Summer"],
    ),
    Fruit(
      name: "raspberry",
      image: "images/raspberry.png",
      info: "Yum raspberries!",
      guide: "Picking raspberries requires skill",
      seasons: ["Summer", "Autumn"],
    ),
    Fruit(
      name: "strawberry",
      image: "images/strawberry.png",
      info: "Yum strawberries!",
      guide:
          "Strawberries will show ripeness through the color. The darker red the color, the sweeter the strawberry typically is.",
      seasons: ["Spring", "Summer"],
    ),
    Fruit(
      name: "tomato",
      image: "images/tomato.png",
      info: "Tomato tomahto",
      guide: "Picking tomatoes requires skill",
      seasons: ["Summer"],
    ),
  ];

  static List<Fruit> loadFruits(String season) {
    return _allFruits.where((fruit) => fruit.seasons.contains(season)).toList();
  }
}
