// 널 체크 연산자 ( ?. ) 와 널 병합 연산자 ( ?? ) 에 대해서 알아 보자.

// 코드의 시작점
void main() {
  // 1. 널 체크 연산자
  String? userName = getNullableUserName();

  // 널 체크 연산자
  int? userNameLength = userName?.length;

  print('사용자 이름의 길이 값 ${userNameLength}');

  print('---------------------------------------');

  // 2. 널 병합 연산자
  String finalUserName = userName ?? 'JACK';
  print('finalUserName : ${finalUserName}');

  // ?. 와 ??를 함께 사용하는 예시
  String upperOrNoName = userName?.toUpperCase() ?? 'NO_NAME';
  String? lowerName = getLowerName(name: finalUserName);
  print('예시 출력 : ${upperOrNoName}');
  print('다운 예시 출력 : ${lowerName}');
} // end of main

// 함수를 만들어 보자
// 선택적 명명 매개변수
String? getNullableUserName({String? name}) {
  return name;
}

// 소문자로 변환하는 함수
String? getLowerName({String? name}) {
  return name?.toLowerCase();
}
