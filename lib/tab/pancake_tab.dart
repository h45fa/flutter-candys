import 'package:flutter/material.dart';

import '../util/standart_tile.dart';

class PancakeTab extends StatelessWidget {
  List pancakesOnSale = [
    ["Ice Cream", "36", Colors.blue, "Pancake", "lib/images/pancakes-2.png"],
    ["Strawberry", "45", Colors.red, "Pancake", "lib/images/pancakes-1.png"],
    ["Jam", "84", Colors.purple, "Pancake", "lib/images/pancakes-3.png"],
    ["Grape", "95", Colors.brown, "Pancake", "lib/images/pancakes-4.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return StandartTile(
          Flavor: pancakesOnSale[index][0],
          Price: pancakesOnSale[index][1],
          Color: pancakesOnSale[index][2],
          Desc: pancakesOnSale[index][3],
          imageName: pancakesOnSale[index][4],
        );
      },
    );
  }
}
