import 'package:flutter/material.dart';

import '../util/standart_tile.dart';

class SmoothieTab extends StatelessWidget {
  List smoothieOnSale = [
    ["Aloha", "36", Colors.blue, "Smoothie", "lib/images/smoothies.png"],
    ["Strawberry", "45", Colors.red, "Smoothie", "lib/images/smoothies-1.png"],
    ["Chilled", "84", Colors.purple, "Smoothie", "lib/images/smoothies-2.png"],
    ["Berry", "95", Colors.brown, "Smoothie", "lib/images/smoothies-3.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return StandartTile(
          Flavor: smoothieOnSale[index][0],
          Price: smoothieOnSale[index][1],
          Color: smoothieOnSale[index][2],
          Desc: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
        );
      },
    );
  }
}
