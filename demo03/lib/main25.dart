// Animal 추상클래스를 구현해서 만들어 줘 라고 부탁했어야 했다.
// 팀장이 먼저 설계를 했었어야 했다
abstract class Animal {
  void performAction();
}

// 추상클래스를 구현할 때 implements 를 사용한다.
class Dog implements Animal {
  @override
  void performAction() {
    print('멍멍 배고파');
  }
}

class Cat implements Animal {
  @override
  void performAction() {
    print('야옹 배고파');
  }
}

class Fish implements Animal {
  @override
  void performAction() {
    print('뻐끔 배고파');
  }
}

// 한단계 더 실력을 쌓아 보자
// 동적 바인딩이란?
void start(Animal a) {
  a.performAction();
}

void main() {
  start(Dog());
  start(Cat());
  start(Fish());
}
