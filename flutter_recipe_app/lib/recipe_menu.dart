import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildMenuIcon(Icons.food_bank, 'ALL'),
          SizedBox(width: 25),
          _buildMenuIcon(Icons.emoji_food_beverage_rounded, 'Coffee'),
          SizedBox(width: 25),
          _buildMenuIcon(Icons.fastfood_outlined, 'Burger'),
          SizedBox(width: 25),
          _buildMenuIcon(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }

  // 메서드 만들어 보기
  // Container 위젯을 꾸며주고 싶다면 ... 커스텀 위젯 사용시 container 많이씀
  Widget _buildMenuIcon(IconData mIcon, String text) {
    // Container 위젯에 color 속성과 decoration 함께 쓰면 오류
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 중앙정렬
        children: [
          Icon(
            mIcon,
            color: Colors.red,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(color: Colors.black45),
          )
        ],
      ),
    );
  }
}
