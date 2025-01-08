import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/exe01/recipe_title.dart';

void main() {
  runApp(MyApp());
}

// 새로 연습 하는 코드
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 디버그 배너 없애기
      theme: ThemeData(fontFamily: 'PatuaOne-Regular.ttf'),
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 시각적 레이아웃 구조 잡기
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: ListView(
        // 스크롤 위젯
        children: [
          // 타이틀
          RecipeTitle()
          // 메뉴
          // 레시피 아이템
          // 레시피 아이템
          // 레시피 아이템
        ],
      ),
    );
  }
}

AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      Icon(CupertinoIcons.search),
      SizedBox(width: 10),
      Icon(CupertinoIcons.heart_fill, color: Colors.red),
      SizedBox(width: 10),
    ],
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey,
        height: 1.0,
      ),
    ),
  );
}
