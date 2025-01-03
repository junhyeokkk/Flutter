// 코드에 시작점
void main() {
  Dog d1 = Dog();
  Water water = Water();

  print('이름 : ${d1.name}');
  print('나이 : ${d1.age}');
  print('색깔 : ${d1.color}');
  print('목마름 : ${d1.thirsty}');

  d1.drinkWater(water);

  print('목마름 : ${d1.thirsty}');
  print('리터 : ${water.liter}');
} // end of main

// 자바 --> .하나의 자바 파일에 public class를 두개 선언할 수 있나요? ==> 없음

// dart에선 public, private 만 지원 => 생략 - public
class Dog {
  // 변수의 선언과 동시에 초기화(값을 넣다)
  String name = '토토';
  int age = 5;
  String color = '블랙';
  int thirsty = 100;

  // 물을 마실 때 마다 갈증 지수가 10 씩 내려간다.
  void drinkWater(Water water) {
    thirsty -= 10;
    water.drink();
  }
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
