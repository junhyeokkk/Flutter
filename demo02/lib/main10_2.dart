// 코드에 시작점
void main() {
  // 생성자
} // end of main

// dart 라는 언어는 기본적으로 null 값을 허용하지 않음 2.7ver 이후
class Dog {
  String name;
  int age;
  String color;
  int thirsty;

  // Dog(this.name, this.age, this.color, this.thirsty) {};
  Dog(this.name, this.age, this.color, this.thirsty);
  // Dog(this.name, this.age); dart에서 생성자 오버로딩은 없음
}

class Water {
  double liter = 2.0; // 물 2리터

  void drink() {
    // liter = liter - 0.1;
    liter -= 0.1;
  }
}
