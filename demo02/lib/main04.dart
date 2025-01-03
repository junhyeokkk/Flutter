// 상수 - 한번 할당된 값이 변경되지 않는 변수
// dart 에서는 final 키워드와 const 키워드를 제공
// 둘의 공통점은 값을 변경할 수 없다에 있지만 차이점 컴파일 시점(const)인지, 런타임(final) 시점인지

// 코드의 시작점
void main() {
  // final - 런타임 상수 (Run-time Constant)
  // 프로그램이 실행되는 도중에 값이 결정되며, 이후에는 변경 불가능
  final int n1 = 10;
  // n1 = 100; 컴파일 시점에 오류 발생

  // const - 컴파일 타임 상수 (Compile-time Constant)
  // 코드가 컴파일 될 때 값이 확정되어 진다.

  const double d1 = 101.1;
  // d1 = 20.0; 변경 불가능

  // 상수 사용시 데이터 타입도 역시 생략 가능
  final a1 = 100;
  const b1 = true;
} // end of main
