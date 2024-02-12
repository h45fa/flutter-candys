import 'package:flutter/material.dart';

import '../util/standart_tile.dart';

class PizzaTab extends StatelessWidget {
  List pizzaOnSale = [
    ["New York Style", "36", Colors.blue, "Pizza", "lib/images/pizza-1.png"],
    ["Neapolitan", "45", Colors.red, "Pizza", "lib/images/pizza-2.png"],
    ["Margherita", "84", Colors.purple, "Pizza", "lib/images/pizza-3.png"],
    ["Chicago", "95", Colors.brown, "Pizza", "lib/images/pizza-4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return StandartTile(
          Flavor: pizzaOnSale[index][0],
          Price: pizzaOnSale[index][1],
          Color: pizzaOnSale[index][2],
          Desc: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
        );
      },
    );
  }
}
