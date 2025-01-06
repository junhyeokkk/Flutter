// null 억제 연산자 ( ! )
// 개발자가 해당 값이 null 아님을 확신하고, 예외를 발생시키지 않을 때 유용하게 사용가능

// 코드의 시작점
import 'package:demo03/main14.dart';

void main() {
  // 이코드는 절대 널이 될 수 없다.
  String? nullableName = getNullableName();

  // 1. 널 억제 연산자 사용해 보기
  // 널체크 연산자 또는 널 병합 연산자를 사용할 수 있지만
  // 널이 아님을 확신 한다면 개발자가 널 억제 연산자를 사용할 수 있다.
  String forcedName = nullableName!;
  print('forcedName = ${nullableName}');
}

String? getNullableName() {
  return '홍길동';
} // end of main
