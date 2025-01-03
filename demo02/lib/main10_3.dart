// 코드에 시작점
void main() {
  // 생성자
  Dog(age: 5, name: '토토', color: '브라운', thirsty: 40);
} // end of main

// 선택적 매개변수를 알아보자.
// 선택적 위치 매개변수 (Optional Positional Paramters)
// 선택적 명명 매개변수 (Optional Named Paramters)
// dart 라는 언어는 기본적으로 null 값을 허용하지 않음 2.7ver 이후
class Dog {
  String name;
  int age;
  String color;
  int thirsty;

  // {} 를 붙이면 선택적 명명 매개 변수
  Dog(
      {required this.name,
      required this.age,
      required this.color,
      required this.thirsty});
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
