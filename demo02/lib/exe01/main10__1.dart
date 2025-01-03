// 코드에 시작점
void main() {
  // 클래스란?
  // 클래스는 객체(인스턴스)를 정의하는 설계도입니다.

  // 그렇다면 객체(object)?
  // 클래스(설계도) 통해서 프로그램에서 실제로 생성되는 인스턴스를 말합니다.
  // 객체는 보통 속성(상태), 행위(메서드)를 가질수 있다

  // 객체 지향 프로그래밍(OOP) 이란?
  // 객체와 객체간의 관계를 형성하고, 그 상호작용을 통해
  // 애플리케이션을 설계, 구현하는 프로그래밍 패러다임 중 하나입니다.

  // 참고 : OOP에 주요 목적은 복잡한 문제를 더 작은 객체로 나누는 것에 있습니다.

  // Dog d1 = new Dog(); // 인스턴스화 되었다.
  Dog d1 = Dog(); // 인스턴스화 되었다. new 키워드를 대부분 생략한다.
  d1.name;
  print('강아지 이름 ${d1.name}');
  print('강아지 나이 ${d1.age}');
  print('강아지 색 ${d1.color}');
  print('강아지 갈증지수 ${d1.thirsty}');

  d1.thirsty = 50;
  print('갈증지수 ${d1.thirsty}');
} // end of main

// 자바 --> .하나의 자바 파일에 public class를 두개 선언할 수 있나요? ==> 없음

// dart에선 public, private 만 지원 => 생략 - public
class Dog {
  // 변수의 선언과 동시에 초기화(값을 넣다)
  String name = '토토';
  int age = 5;
  String color = '블랙';

  int thirsty = 100;
}
