// Null Safety 란?
// 개발자가 널 에러를 피할 수 있도록 도와주는 dart언어의 기능

// 코드의 시작점
void main() {
  String name = '길동';
  int age = 30;

  // String? 옵셔널 타입이다. (String 타입과 다름)
  // null을 허용할 수 있다.
  String? nullableName;
  int? nullableAge;

  print('name : ${name}');
  // print('nullableName : ${nullableName.length}'); 컴파일 시점에 오류를 미리 확인할 수 있다.
  print('nullableAge : ${nullableAge}');

  // 방어적 코드
  if (nullableName != null) {
    print(nullableName.length);
  }
} // end of main
