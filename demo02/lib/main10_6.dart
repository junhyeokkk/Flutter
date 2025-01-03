// 코드에 시작점
// cascade 연산자
// .. 연산자를 사용하면 동일 객체에서 여러 메서드나 속성을 연속적으로 호출할 수 잇는
// 유용한 연산자 이다.

class Person {
  String? name;
  int money = 0;

  void setName(String newName) {
    this.name = newName;
  }

  void addMoney(int money) {
    this.money += money;
  }
}

void main() {
  var p1 = Person()
    ..setName('홍길동')
    ..addMoney(5000)
    ..money += 2000;
  print(p1.name);
  print(p1.money);
} // end of main
