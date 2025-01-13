import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        menuIcon(Icons.food_bank, 'ALL'),
        SizedBox(width: 30),
        menuIcon(Icons.coffee, 'Coffee'),
        SizedBox(width: 30),
        menuIcon(Icons.fastfood_outlined, 'Burger'),
        SizedBox(width: 30),
        menuIcon(Icons.local_pizza_outlined, 'Pizza'),
      ],
    );
  }
}

Widget menuIcon(IconData icon, String text) {
  return Container(
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.red,
        ),
        SizedBox(height: 10),
        Text(
          '${text}',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
