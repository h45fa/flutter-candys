import 'package:flutter/material.dart';

import '../util/standart_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "Donut", "lib/images/icecream_donut.png"],
    [
      "Strawberry",
      "45",
      Colors.red,
      "Donut",
      "lib/images/strawberry_donut.png"
    ],
    ["Grape Ape", "84", Colors.purple, "Donut", "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "Donut", "lib/images/chocolate_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return StandartTile(
          Flavor: donutsOnSale[index][0],
          Price: donutsOnSale[index][1],
          Color: donutsOnSale[index][2],
          Desc: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}
