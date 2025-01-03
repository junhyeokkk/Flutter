// 익명 함수
// 코드에 시작점
void main() {
  // 1단계 - 이름이 없는 함수 (선언을 하더라도 외부에서 사용할 방법이 없다)
  // 변수에 할당하지 않고 바로 익명 함수를 호출하는 것은 dart에서 불가능 하다

  (int number) {
    return 100 + number;
  };

  // 2단계 - 함수를 변수에 담을 수 있다.
  // dart 함수의 타입은 Function이다.
  Function(int) square = (int number) {
    return number * number;
  };

  // 3단계
  var sub = (int number1, int number2) {
    return number1 - number2;
  };

  // 4단계 - dart에서는 매개변수 데이터 타입도 생략이 가능하다.
  var add = (number1, number2) {
    return number1 + number2;
  };

  // 문제 1
  // 두 수의 곱하기 익명 함수를 정의하고 그 함수를 변수에 담는 식을 완성하세요
  var mul = (n1, n2) {
    return n1 * n2;
  };

  print("2의 제곱은 : ${square(2)}");
  print("2 - 1는 : ${sub(2, 1)}");
  print("2 + 2는 : ${add(2, 2)}");
  print("2 * 2는 : ${mul(2, 2)}");
} // end of main
