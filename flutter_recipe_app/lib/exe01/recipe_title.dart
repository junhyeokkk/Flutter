import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Recipes',
      style: TextStyle(fontSize: 30),
    );
  }
}
