import 'package:flutter/material.dart';

import '../util/standart_tile.dart';

class BurgerTab extends StatelessWidget {
  List burgerOnSale = [
    ["hamburger", "36", Colors.blue, "Burger", "lib/images/burger.png"],
    [
      "cheeseburger",
      "45",
      Colors.red,
      "Burger",
      "lib/images/cheese-burger.png"
    ],
    ["Mega Mac", "84", Colors.purple, "Burger", "lib/images/coolburger.png"],
    [
      "chicken burger",
      "95",
      Colors.brown,
      "Burger",
      "lib/images/hamburger.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return StandartTile(
          Flavor: burgerOnSale[index][0],
          Price: burgerOnSale[index][1],
          Color: burgerOnSale[index][2],
          Desc: burgerOnSale[index][3],
          imageName: burgerOnSale[index][4],
        );
      },
    );
  }
}
