// super 키워드는 자식이 부모의 객체를 참조할 수 있는 키워드입니다.
class Burger {
  String? name;
  // 기본 생성자 - 매개변수가 있다면 ...
  Burger(String? name) {
    print('버거 생성자 호출()');
    this.name = name;
  }
}

class CheeseBurger extends Burger {
  // 자식이 태어나기 전에 부모가 먼저 태어나야 자식이 존재할 수 있다.

  // dart에서 부모생성자에 매개변수가 있다면
  // 이니셜라이즈 키워드와 super 키워드를 통해 값을 전달한다.

  // dart 문법에서 허용 안함
  // CheeseBurger(String? name) {
  //   // super(name); // 자바 기준 설명
  //   // super.  부모의 변수에 접근하는 문법
  //   // super(); 부모 클래스의 생성자 호출 문법. 즉, Burger(); 치환
  // }

  // 이니셜라이즈 키워드를 살펴 보자.
  CheeseBurger(String? name) : super(name) {
    print('치즈버거 생성자 호출()');
  }
}

// 코드의 시작점
void main() {
  CheeseBurger burger = CheeseBurger('불고기치즈버거');
  print(burger.name);
}
