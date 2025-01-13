import 'package:flutter/material.dart';

class RecipeItem extends StatelessWidget {
  final String img;
  final String text1;
  final String text2;

  const RecipeItem(this.img, this.text1, this.text2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/${img}',
                fit: BoxFit.cover,
              ),
            )),
        SizedBox(height: 10),
        Text(
          '${text1}',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          '${text2}',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
