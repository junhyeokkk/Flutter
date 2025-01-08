import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/recipe_list_Item.dart';
import 'package:flutter_recipe_app/recipe_menu.dart';
import 'recipe_title.dart';

// 플러터 코드의 시작점
void main() {
  // MyApp 위젯을 루트 위젯으로 만들어주는 함수 이다.
  // 사전 기반 지식 -- 위젯 트리를 떠올려 주세요!
  runApp(MyApp());
}

// 위젯을 만들 때 크게 두가지로 구분한다.
// StatelessWidget 위젯 - 상태 변경이 없는 위젯을 화면에 그릴 때 선택한다.
// 상속문법 사용
// 우리들만의 약속 - MyApp -> Meterial App 객체를 활용하자
class MyApp extends StatelessWidget {
  // 생성자 - 선택적 명명 매개변수 (값을 넣어도 되고 안넣어도 되고)
  MyApp({super.key});

  // 보통 루트 위젯을 시작할 때 MaterialApp을 많이 활용
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PatuaOne'),
      // 앱 실행 되었을 때 첫 페이지를 지정할 수 있다.
      home: RecipePage(),
    );
  }
} // end of class

// 우리들만의 규칙 2 - 페이지라고 이름 붙이는 클래스는 Scaffold 활용하자
class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    // 시각적 레이아웃 구조를 잡아 주는 위젯
    // app , body, bottom 영역
    return Scaffold(
      appBar: _buildRecipeAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          // 스크롤 위젯
          children: [
            // 타이틀
            RecipeTitle(),
            // 메뉴
            RecipeMenu(),
            // 레시피 아이템
            RecipeListItem('coffee', 'Made Coffee'),
            // 레시피 아이템
            RecipeListItem('burger', 'Made Burger'),
            // 레시피 아이템
            RecipeListItem('pizza', 'Made Pizza'),
          ],
        ),
      ),
    );
  } // end of build method

  // 메서드를 만들어 보자.
  // private
  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      //elevation: 1.0,
      actions: [
        Icon(CupertinoIcons.search, color: Colors.black),
        SizedBox(width: 15),
        Icon(CupertinoIcons.heart_fill, color: Colors.red),
        SizedBox(width: 15)
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
}
