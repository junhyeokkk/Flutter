// 상속은 부모가 가진 상태와 행위를 자식이 물려받는 것과 동시에 다형성이 성립해야함
// 다형성이란? - '다양한 형태로 바라볼 수 있다.'
// 추가설명
// 만약 BMW라는 클래스와 제네시스 클래스가 엔진 클래스를 상속한다면
// 과연 그것은 정상적인 설계가 맞을까요?
// 다형성이 성립하지 않기 때문에 잘못된 상속이라고 할 수 있습니다.
// 즉, 다형성이란 BMW에게 너 엔진이야 라고 물었을 때
// 어 나 엔진이야 라고 답을 할 수 있어야 한다.(즉 잘못된 상속)
// 코드의 시작점

class Burger {
  String? b_name;
  // 생성자
  Burger() {
    print('나는 버거');
  }
}

class CheeseBurger extends Burger {
  String? ch_name;
  CheeseBurger() {
    print('치즈 버거');
  }
}

void main() {
  CheeseBurger cb = CheeseBurger();
  // cb.b_name; 보임!
  // cb.ch_name; 보임!
  // 주요 핵심 개념
  // 치즈 버거는 다형성을 가집니다 >> 버거이기도 하고 치즈 버거이기도 함.
  // ==================================================
  print('---------------------------------------------------');
  Burger b2 = CheeseBurger();
  // b2.b_name; 보임!
  // b2.ch_name; 안보임!

  Burger b3 = CheeseBurger();
  CheeseBurger b4 = b3 as CheeseBurger; // java에선 () dart에선 as 최신문법
  print(b4.ch_name);
  print('버거 데이터 타입에서 ch_name을 호출하자 ${(b3 as CheeseBurger).ch_name}');
}
