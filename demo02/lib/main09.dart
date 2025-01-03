// 화살표 함수 (람다 표현식)
// 코드에 시작점
void main() {
  int num1 = 500;
  int num2 = 10;

  String s2 = "aaaaaaaaaa";
  String s1 = "ddd";

  List<int> list = [1, 2, 3, 4];
  List<int> list2 = [];

  print("리스트의 합 : ${avg2(list2)}");
  print("더긴 문자열은? ${long(s1, s2)}");
} // end of main

// 재활용 하고 싶다면 --> 함수 --> 좀더 간결 --> 화살표 함수
int add(int n1, int n2) {
  return n1 + n2;
}

// 함수 구현부가 한줄에 쓰고자 하면 람다 , if-else등 복잡한 연산하면 구현하는게 좋음
int add2(int n1, int n2) => n1 + n2;
int sub(int n1, int n2) => n1 - n2;
int mul(n1, n2) => n1 * n2;
int div(n1, n2) => n1 / n2;

// 리스트 합산 계산
int avg(List<int> list) => list.reduce((a, b) => (a + b)); // 리스트가 비어있으면 오류 발생
int avg2(List<int> list) =>
    list.fold(0, (a, b) => a + b); // 초기값을 제공 + 비어있는 리스트에도 안전하게 작동

// 두 문자열을 입력받아 길이가 더 긴 문자열을 반환하는 화살표 함수를 작성하세요.
String long(String s1, String s2) => s1.length > s2.length ? s1 : s2;

// 원, 직사각형에 면적을 구하는 코드를 작성하시오
int circle(n1) => n1 * n1 * 3.14;
