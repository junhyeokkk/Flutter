import 'package:flutter/material.dart';

// 보통 협업 --> 디자이너
// 전역 함수로 만들어 보자.
const MaterialColor primaryMintGreen = MaterialColor(
  0xFF2EC4B6,
  <int, Color>{
    50: Color(0xFFE0F7FA),
    100: Color(0xFFB2EBF2),
    200: Color(0xFF80DEEA),
    300: Color(0xFF4DD0E1),
    400: Color(0xFF26C6DA),
    500: Color(0xFF00BCD4),
    600: Color(0xFF00ACC1),
    700: Color(0xFF0097A7),
    800: Color(0xFF00838F),
    900: Color(0xFF006064),
  },
);

// 전역 함수
ThemeData theme() {
  // 앱 전반적인 테마(색상, 글꼴, 위젯 스타일 등)를 정의하는 클래스
  // --> 전체적으로 일관된 디자인을 유지하기 위해 사용한다.
  return ThemeData(
      // 앱의 기본 색상 팔레트를 설정하는 속성
      primarySwatch: primaryMintGreen,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.blue),
      ));
}
