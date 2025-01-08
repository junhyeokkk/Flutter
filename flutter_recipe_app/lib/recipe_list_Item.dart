import 'package:flutter/cupertino.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String titie;
  // 하드 코딩
  const RecipeListItem(this.imageName, this.titie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 이미지
          // 이미지 비율을 지정할 수 있다.
          AspectRatio(
            aspectRatio: 2 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/${imageName}.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          // 텍스트 1
          Text(titie, style: TextStyle(fontSize: 20)),
          // 텍스트 2
          Text('Have you erver ......................')
        ],
      ),
    );
  }
}
